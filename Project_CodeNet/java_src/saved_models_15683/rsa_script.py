from scipy.stats import spearmanr
import numpy as np
from tqdm import tqdm
from scipy import stats

import sys
import configparser
import glob

import random

import torch

class RSA:
  def __init__(self,layer=1):
    print('RSA Class Init')

    self.config = configparser.ConfigParser()
    self.config.read(sys.argv[1])

    self.code_folder=self.config['settings']['CodeBERT_folder']
    self.nl_folder=self.config['settings']['NL_folder']
    self.mode=self.config['settings']['mode']

    
    self.batch_size=int(self.config['settings']['batch_size'])
    self.layer=layer

    self.code_folder_li=(glob.glob(self.code_folder+'layer_'+str(self.layer)+'/*'))
    random.shuffle(self.code_folder_li)
    # print(self.code_folder_li)
    self.total_len=len(self.code_folder_li)
    self.req_li=self.make_batches()

    

  def calculate_geometry(self,sample_embeds):
    sample_embeds = np.array(sample_embeds)
    
    sim_mat = spearmanr(sample_embeds, axis=1,nan_policy='omit')[0]
    # print(sim_mat)
    dissim_mat = np.ones(sim_mat.shape) - sim_mat 
    geometry = dissim_mat[np.triu_indices(sample_embeds.shape[0], 1)].reshape(-1)
    return geometry

  def perform_rsa_batch(self, sample_a_embeds, sample_b_embeds):
        """
        Perform RSA for 1 sample pair, returns final similarity
        """

        # get dissimiarlity matrices (i.e. geometries) for both samples
        geometry_a = self.calculate_geometry(sample_a_embeds)
        geometry_b = self.calculate_geometry(sample_b_embeds)

        # print(geometry_a)
        # print(geometry_b)
        similarity,p_value = spearmanr([geometry_a, geometry_b], axis=1)
        return similarity,p_value

  def make_batches(self):
    num_batches =int(self.total_len/self.batch_size)
    print(f'Number of batches: {num_batches}')

    req_li=np.array_split(range(self.total_len),num_batches)
    return req_li
  
  def log_to_file(self,mean,std,pvalue):

      file_name=self.config['settings']['result_file_name']
      result_file = open(file_name,"a")

      result_file.write(str(mean))
      result_file.write('\t')
      result_file.write(str(std))
      result_file.write('\t')
      result_file.write(str(pvalue))
      result_file.write('\n')


      result_file.close()
    




  def do_RSA(self):


    batch_value_list=[]
    batch_pvalue_list=[]

    for idx,batch in tqdm(enumerate(self.req_li),total=len(self.req_li)):

      # if idx!=98:
      #   continue


      #nl_list and code_list will be a 2D matrix with each row having embedding of that sample 
      nl_list=[]
      code_list=[]

      
      
      ##loop for making nl_list and code_list
      for index in batch:

        code_embedding_path=self.code_folder_li[index]
        pid=code_embedding_path.split('/')[-1].split('_')[0]
        nl_embedding_path=self.nl_folder+pid+'_BERT.npy'


        # print(nl_embedding_path)

        #LOAD SAVED EMBEDDINGS



        #load embeddings from the given layer from CodeBERT
          
        with open(code_embedding_path,'rb') as f:
          code_embed=np.load(f)
          f.close()
          
        with open(nl_embedding_path,'rb') as f:
          nl_embed=np.load(f)
          f.close()


        #flatten the numpy array
        if  self.mode=='normal':
          code_embed=code_embed.reshape(-1).tolist()

        elif self.mode=='finetuned_format_average':
          code_embed=np.mean(code_embed,axis=0).reshape(-1).tolist()

        elif self.mode=='finetuned_format_code':
          code_embed=code_embed[0].reshape(-1).tolist()


        
        nl_embed=nl_embed.reshape(-1).tolist()


        assert len(code_embed)==768
        assert len(nl_embed)==768

        # print(torch.isnan(torch.tensor(nl_embed)).any())


        #append list to form 2d matrix so that RSA can be done
        nl_list.append(nl_embed)
        code_list.append(code_embed)





      # print(nl_list[0])
      # print(code_list)  

      #z-norm
      nl_list=stats.zscore(nl_list)
      # print('Printing ZNORM')
      # print(nl_list[0])
      code_list=stats.zscore(code_list)

      value,pvalue=self.perform_rsa_batch(nl_list,code_list)
      # if pvalue > 0.05:
      #   print(f'Batch idx:{idx},{pvalue}')

      batch_value_list.append(value)
      batch_pvalue_list.append(pvalue)

    

    print(f" LAYER_{self.layer} similarity_mean - MEAN: {np.mean(batch_value_list)} STD: {np.std(batch_value_list)}")
    print(f" LAYER_{self.layer} pvalue_mean - MEAN: {np.mean(batch_pvalue_list)}")

    self.log_to_file(np.mean(batch_value_list),np.std(batch_value_list),np.mean(batch_pvalue_list))



config = configparser.ConfigParser()
config.read(sys.argv[1])

file_name=config['settings']['result_file_name']
result_file = open(file_name,"w")


for i in range(1,14):
  RSA(layer=i).do_RSA()
  print()
  print()




















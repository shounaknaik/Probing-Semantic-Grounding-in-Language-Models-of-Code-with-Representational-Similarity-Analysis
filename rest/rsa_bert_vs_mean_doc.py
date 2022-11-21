# -*- coding: utf-8 -*-
"""NL_code_dis-similarity.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1A-4k1hvZaRoxvPAppb_uK-LED-9UzO4p
"""

from scipy.stats import spearmanr
import numpy as np
from tqdm import tqdm
# from statsmodels.stats.descriptivestats import sign_test
from scipy import stats


class RSA:
  def __init__(self,layer=1):
    print('RSA Class Init')
    self.total_len=19210
    self.batch_size=200
    self.layer=layer
    self.duplicates_list=[2123, 4662, 6374, 7110, 7561, 8239, 12280, 12360, 15420, 15952]
    self.req_li=self.make_batches()

  def calculate_geometry(self,sample_embeds):
    sample_embeds = np.array(sample_embeds)
    # print(sample_embeds.shape)
    sim_mat = spearmanr(sample_embeds, axis=1,nan_policy='omit')[0]
    # print(sim_mat.shape)
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
        similarity,p_value = spearmanr([geometry_a, geometry_b], axis=1)
        return similarity,p_value

  def make_batches(self):
    num_batches =int(self.total_len/self.batch_size)
    print(f'Number of batches: {num_batches}')
    req_li=np.array_split(range(self.total_len),num_batches)
    return req_li

  def do_RSA(self):

    result_file = open("./result_bert_doc.txt","a")

    batch_value_list=[]
    batch_pvalue_list=[]

    for idx,batch in tqdm(enumerate(self.req_li),total=len(self.req_li)):


      #nl_list and code_list will be a 2D matrix with each row having embedding of that sample 
      nl_list=[]
      code_list=[]

      glove_fail=[]
      
      ##loop for making nl_list and code_list
      for index in batch:

        if index in self.duplicates_list:
          continue

        try:

          #LOAD SAVED EMBEDDINGS

          #load embeddings from the given layer from CodeBERT
          with open(f'./codeBERT_mean_doc/layer_{self.layer}/line_{index}_{self.layer}_codeBERT.npy','rb') as f:
            codeBERT_embed=np.load(f)
            f.close()

          #load bert embeddings for the doctsring
          with open(f'./BERT_embeddings/file_{index}_BERT.npy','rb') as f:
            BERT_embed=np.load(f)
            f.close()





          

          #flatten the numpy array
          codeBERT_embed=codeBERT_embed.reshape(-1).tolist()
          BERT_embed=BERT_embed.reshape(-1).tolist()
          assert len(codeBERT_embed)==768
          assert len(BERT_embed)==768


          #append list to form 2d matrix so that RSA can be done
          nl_list.append(BERT_embed)
          code_list.append(codeBERT_embed)

        except:
          glove_fail.append(index)

      #z-norm
      nl_list=stats.zscore(nl_list)
      code_list=stats.zscore(code_list)

      value,pvalue=self.perform_rsa_batch(nl_list,code_list)
      # if pvalue > 0.05:
      #   print(f'Batch idx:{idx},{pvalue}')

      batch_value_list.append(value)
      batch_pvalue_list.append(pvalue)
    

    print(f" LAYER_{self.layer} similarity_mean - MEAN: {np.mean(batch_value_list)} STD: {np.std(batch_value_list)}")
    print(f" LAYER_{self.layer} pvalue_mean - MEAN: {np.mean(batch_pvalue_list)}")

    result_file.write(str(np.mean(batch_value_list)))
    result_file.write('\t')
    result_file.write(str(np.std(batch_value_list)))
    result_file.write('\t')
    result_file.write(str(np.mean(batch_pvalue_list)))
    result_file.write('\n')


    result_file.close()
    



for i in range(1,14):
  RSA(layer=i).do_RSA()
  print()
  print()





















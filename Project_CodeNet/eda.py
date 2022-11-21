import glob
import pandas as pd
import random
import pickle

from tqdm import tqdm

final_df=pd.DataFrame(columns=['submission_id','problem_id','user_id','date','language','original_language','filename_ext',	'status','cpu_time','memory','code_size','accuracy'])

file_list=glob.glob('./metadata/p0*.csv')

with open('ok_problems.pkl','rb') as f:
	file_list=pickle.load(f)


# with open('file_list.pkl','rb') as f:
# 	file_list=pickle.load(f)

# file_list=random.sample(file_list,500)

# # with open('file_list.pkl','wb') as f:
# # 	pickle.dump(file_list,f)

for file in tqdm(file_list,total=len(file_list)):
	df=pd.read_csv(file)
	final_df=pd.concat([final_df,df])

# final_df.to_csv('eda_df.csv',index=False)

# final_df=pd.read_csv('eda_df.csv')


codebert_languages=['Python', 'Java', 'JavaScript', 'PHP', 'Ruby', 'Go']


errors=['Wrong Answer','Runtime Error','Accepted','Compile Error']

final_df=final_df.loc[final_df['language'].isin(codebert_languages)]

print(final_df['language'].unique())

print(final_df['status'].describe())

print(final_df['status'].unique())

print()

WA=final_df.loc[final_df['status']=='Wrong Answer']
print(f'WA df : {len(WA)}')
print(WA.groupby('language').size())
print()

RE=final_df.loc[final_df['status']=='Runtime Error']
print(f'RE df : {len(RE)}')
print(RE.groupby('language').size())
print()

Acc=final_df.loc[final_df['status']=='Accepted']
print(f'Acc df : {len(Acc)}')
print(Acc.groupby('language').size())
print()

CE=final_df.loc[final_df['status']=='Compile Error']
print(f'CE df : {len(CE)}')
print(CE.groupby('language').size())
print()







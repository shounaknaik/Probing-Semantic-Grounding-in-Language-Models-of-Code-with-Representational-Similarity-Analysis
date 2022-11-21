import pandas as pd
from transformers import pipeline
import pprint
from tqdm import tqdm


init_df=pd.read_csv('descriptions.csv')


# print(init_df.head())

descriptions_ser=init_df['Final_description']

pipe = pipeline(task="summarization",model="slauw87/bart_summarisation",device=0)

title_li=[]
for desc in tqdm(descriptions_ser,total=len(descriptions_ser)):

  print(pipe(desc,max_length=10)[0])
  title=pipe(desc,max_length=10)[0]['summary_text']
  title_li.append(title)

  break

init_df['title']=title_li
print(init_df.head())



init_df.to_csv('final_translated.csv',index=False)

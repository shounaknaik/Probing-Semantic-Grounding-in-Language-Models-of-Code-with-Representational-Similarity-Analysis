import pandas as pd
from tqdm import tqdm

data_df = pd.read_json('./test.jsonl', lines=True)

res=[]
duplicates=[]

for index, phrase in tqdm(enumerate(data_df['docstring_summary']),total=len(data_df['docstring_summary'])):
	if phrase not in res:
		res.append(phrase)

	else :
		duplicates.append(index)

print(duplicates)

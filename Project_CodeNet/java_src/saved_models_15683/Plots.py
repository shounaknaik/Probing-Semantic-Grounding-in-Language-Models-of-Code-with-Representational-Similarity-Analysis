#!/usr/bin/env python
# coding: utf-8

# In[1]:


# IMPORTS

import pandas as pd
import plotly.express as px

import os


# In[2]:


# LOAD DATA

layers = ["Layer {}".format(i) for i in range(1,13)]
layers = ["Embedding"] + layers

accepted_df = pd.read_csv('rsa_accepted_average.txt', delimiter = "\t", names=["mean", "std", "p_value"], header=None)
accepted_df["layer"] = layers
accepted_df["type"] = ["Accepted NL+Code"] * 13
# print(len(accepted_df))
# print(accepted_df.head())

semantic_df = pd.read_csv('rsa_semantic_average.txt', delimiter = "\t", names=["mean", "std", "p_value"], header=None)
semantic_df["layer"] = layers
semantic_df["type"] = ["Wrong NL+Code"] * 13
# print(len(semantic_df))
# print(semantic_df.head())


accepted_code_df = pd.read_csv('rsa_accepted_code.txt', delimiter = "\t", names=["mean", "std", "p_value"], header=None)
accepted_code_df["layer"] = layers
accepted_code_df["type"] = ["Accepted-Code"] * 13
# print(len(accepted_code_df))
# print(accepted_code_df.head())

semantic_code_df = pd.read_csv('rsa_semantic_code.txt', delimiter = "\t", names=["mean", "std", "p_value"], header=None)
semantic_code_df["layer"] = layers
semantic_code_df["type"] = ["Wrong-Code"] * 13
# print(len(semantic_df))
# print(semantic_df.head())


combined_df = pd.concat([accepted_df, semantic_df,accepted_code_df,semantic_code_df], axis=0)
# print(len(combined_df))
# print(combined_df.head())


# In[5]:


# PLOT

directory=os.getcwd()

# print(directory)

title_fig=directory.split('/')[-1]
title_fig=directory.split('/')[-2].split('_')[0]+'_'+title_fig


fig = px.line(combined_df, x='layer', y='mean', color='type', symbol="type",title=title_fig) 
# fig.show()


# In[4]:


fig.write_image(f"{title_fig}.png")


# In[5]:


# get_ipython().system('pip install -U kaleido')


# In[ ]:





import gradio as gr
import nltk
from model import CustomModel

import os
os.system("cp -r ./nltk_data_packages /usr/share/nltk_data/")

def analyze(text):
    custom_model = CustomModel()
    # return text

# app = gr.Interface(fn=analyze, inputs="text", outputs="text")

# app.launch(share="True")
# app.launch()
print(analyze("Hello World!"))

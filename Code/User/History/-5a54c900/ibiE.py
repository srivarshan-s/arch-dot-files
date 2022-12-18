import gradio as gr
from nltk.corpus import stopwords

def analyze(text):
    text = stopwords.words("english")[0]
    return text

app = gr.Interface(fn=analyze, inputs="text", outputs="text")

# app.launch(share="True")
app.launch()

import gradio as gr
import pickle
from model import CustomModel
from preprocess import preprocess_pipeline, vectorizer
import os

os.system("cp -r ./nltk_data/ /home/user/nltk_data")

def analyze(text):
    model = CustomModel()
    text = preprocess_pipeline(text)
    vector = vectorizer([text]).toarray()
    pred = model.predict(vector)
    label_encoder = pickle.load(open("encoders/label_encoder.pkl", "rb"))
    pred = label_encoder.inverse_transform(pred)[0]
    pred = pred[pred.find('(')+1:pred.find(')')]
    return pred

app = gr.Interface(fn=analyze, inputs="text", outputs="text")

# app.launch(share="True")
app.launch()

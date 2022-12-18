from model import CustomModel
from preprocess import preprocess_pipeline, vectorizer
import pickle


def analyze(text):
    model = CustomModel()
    text = preprocess_pipeline(text)
    vector = vectorizer([text]).toarray()
    pred = model.predict(vector)
    label_encoder = pickle.load(open("encoders/label_encoder.pkl", "rb"))
    return label_encoder.inverse_transform(pred)

print(analyze("Bottled water is somewhat less likely to be found in developing countries"))

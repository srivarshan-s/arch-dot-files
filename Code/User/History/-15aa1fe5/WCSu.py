from model import CustomModel
from preprocess import preprocess_pipeline, vectorizer


def analyze(text):
    model = CustomModel()
    text = preprocess_pipeline(text)
    vector = vectorizer([text]).toarray()
    pred = model.predict(vector)
    return pred

print(analyze("Bottled water is somewhat less likely to be found in developing countries"))

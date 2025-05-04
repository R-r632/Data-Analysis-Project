# predict_sentiment.py

import re
import joblib
from nltk.stem.porter import PorterStemmer

# 1) Preprocessing + Stemming Function
stemmer = PorterStemmer()
def preprocess_and_stem(text: str) -> str:
    text = text.lower()
    # remove URLs, mentions, non-letters
    text = re.sub(r"http\S+|www\.\S+|@\w+|[^a-zA-Z]", " ", text)
    tokens = text.split()
    # stem each token
    return " ".join(stemmer.stem(tok) for tok in tokens)

# 2) Load your saved TF-IDF vectorizer and model
vectorizer = joblib.load('tfidf_vectorizer.joblib')
model      = joblib.load('sentiment_model.joblib')

# 3) Prediction function
def predict_sentiment(text: str) -> str:
    processed = preprocess_and_stem(text)
    features  = vectorizer.transform([processed])
    pred      = model.predict(features)[0]
    return "Positive" if pred == 1 else "Negative"

# 4) Command-line or interactive usage
if __name__ == "__main__":
    import sys

    if len(sys.argv) > 1:
        # Pass the tweet text as command-line arguments:
        tweet = " ".join(sys.argv[1:])
    else:
        # Or be prompted to type one
        tweet = input("Enter tweet text: ")

    print(f"Tweet → {predict_sentiment(tweet)}")

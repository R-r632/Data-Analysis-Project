import os
import torch
from transformers import BertTokenizer, BertForSequenceClassification

# 1️⃣ Build an absolute path to your saved_model folder
script_dir = os.path.dirname(os.path.abspath(__file__))
save_dir = os.path.join(script_dir, 'saved_model', 'bert_sentiment')

# 2️⃣ Debug: print out what’s actually in save_dir
print("Loading model from:", save_dir)
print("Files found:", os.listdir(save_dir))

# 3️⃣ Load tokenizer & model from local files only
tokenizer = BertTokenizer.from_pretrained(save_dir, local_files_only=True)
model     = BertForSequenceClassification.from_pretrained(save_dir, local_files_only=True)

# 4️⃣ Move model to GPU/CPU and set eval mode
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
model.to(device).eval()

# 5️⃣ Inference helper
def predict_sentiment(text: str, max_length: int = 128) -> str:
    inputs = tokenizer(
        text,
        return_tensors='pt',
        truncation=True,
        padding='max_length',
        max_length=max_length
    )
    inputs = {k: v.to(device) for k, v in inputs.items()}
    with torch.no_grad():
        logits = model(**inputs).logits
    pred = logits.argmax(dim=1).item()
    return "Positive" if pred == 1 else "Negative"

# 6️⃣ Example / interactive usage
if __name__ == "__main__":
    while True:
        txt = input("Enter text (or 'exit'): ")
        if txt.lower() in ('exit', 'quit'):
            break
        print("Sentiment →", predict_sentiment(txt))

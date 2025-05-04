from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field
import joblib, numpy as np, pathlib

app = FastAPI(title="Falcon 9 Landing Predictor")

class Features(BaseModel):
    vals: list[float] = Field(..., min_items=10, max_items=10)

@app.on_event("startup")
def load_artifacts():
    model_path = pathlib.Path(__file__).parent / "models" / "falcon9.joblib"
    global model
    model = joblib.load(model_path)
    print("✅  Model loaded:", model_path)

@app.post("/predict")
def predict(inp: Features):
    try:
        prob = model.predict_proba([inp.vals])[0, 1]
        return {"landing_probability": round(float(prob), 4)}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

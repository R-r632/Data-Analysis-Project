from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field
import joblib
import numpy as np
import os
from contextlib import asynccontextmanager

class Features(BaseModel):
    vals: list[float] = Field(..., min_items=85, max_items=85)

@asynccontextmanager
async def lifespan(app: FastAPI):
    global model
    current_dir = os.path.dirname(__file__)
    model_path = os.path.join(current_dir, "models", "falcon9_pipeline.joblib")
    model = joblib.load(model_path)
    yield

app = FastAPI(title="Falcon 9 Landing Predictor", lifespan=lifespan)

@app.post("/predict")
async def predict(inp: Features):
    try:
        sample = np.array([inp.vals])
        predict = model.predict(sample)
        probability = model.predict_proba(sample)[0, 1]
        return {
            "landing_prediction": int(predict[0]),
            "landing_probability": round(float(probability), 4)
        }
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:app", host="127.0.0.1", port=8000, reload=True)
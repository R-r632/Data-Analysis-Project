from fastapi import FastAPI, HTTPException
from pydantic import BaseModel, Field
import joblib
import numpy as np
from contextlib import asynccontextmanager

class Features(BaseModel):
    vals: list[float] = Field(..., min_items=10, max_items=10)

@asynccontextmanager
async def lifespan(app: FastAPI):
    global model
    model = joblib.load("models/falcon9_pipeline.joblib")  # Correct filename
    yield

app = FastAPI(title="Falcon 9 Landing Predictor", lifespan=lifespan)

@app.post("/predict")
async def predict(inp: Features):
    try:
        sample = np.array([inp.vals])
        probability = model.predict_proba(sample)[0, 1]
        return {"landing_probability": round(float(probability), 4)}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:app", host="127.0.0.1", port=8000, reload=True)
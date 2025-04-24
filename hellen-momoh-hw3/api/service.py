from fastapi import FastAPI, Query
from pydantic import BaseModel
import math

app = FastAPI()

@app.get("/q1")
def calculate_hypotenuse(x: float = Query(...), y: float = Query(...)):
    result = math.sqrt(x**2 + y**2)
    return {"result": result}

class RepeatText(BaseModel):
    text: str
    repeat: int

@app.post("/q2")
def repeat_text(data: RepeatText):
    repeated_text = ' '.join([data.text] * data.repeat)
    return {"result": repeated_text}

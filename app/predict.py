# app/predict.py

import joblib
import numpy as np
from sklearn.datasets import load_iris

# Load model
model = joblib.load("app/model.joblib")

# Simulate a prediction
sample = np.array([5.1, 3.5, 1.4, 0.2]).reshape(1, -1)
pred = model.predict(sample)

iris = load_iris()
print(f"Predicted class: {iris.target_names[pred[0]]}")

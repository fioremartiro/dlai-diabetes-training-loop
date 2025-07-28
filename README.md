# Predicting diabetes with a Simple Neural Network

This repo contains an interactive Jupyter notebook where learners implement a training loop for a binary classifier using **PyTorch**. The notebook is packaged with Docker for easy setup and reproducibility.

## What You'll Learn

- Forward pass through a neural network  
- Binary cross-entropy loss  
- Backpropagation  
- Weight updates using gradient descent  
- Model evaluation with accuracy and sample predictions  

## How to Run

```bash
# Clone the repository
git clone https://github.com/yourname/dlai-diabetes-training-loop.git
cd dlai-diabetes-training-loop

# Build the Docker image
docker build -t diabetes-loop .

# Run the Docker container
docker run -p 8888:8888 diabetes-loop
```

Once running, open your browser and go to:
```
http://localhost:8888
```

JupyterLab will launch and the notebook `diabetesTrainingLoop.ipynb` will be available to explore and run.

## Requirements (optional for manual setup)

If you prefer to run the notebook outside Docker, install dependencies manually:

```bash
pip install -r requirements.txt
```

Dependencies:
- numpy
- matplotlib
- notebook
- jupyterlab

## Files Included

- `diabetesTrainingLoop.ipynb` – Main lab notebook
- `requirements.txt` – Python dependencies
- `Dockerfile` – Docker environment setup
- `README.md` – Instructions

## License
This project is for evaluation purposes only as part of the DeepLearning.AI Curriculum Engineer assignment.

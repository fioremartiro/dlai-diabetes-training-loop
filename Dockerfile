# Base image with Python
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files (including notebook)
COPY . /app

# Expose the Jupyter Lab port
EXPOSE 8888

# Start Jupyter Lab with no authentication token
CMD echo "JupyterLab running at http://localhost:8888" && \
    jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=''

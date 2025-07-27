# Base image with Python
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install Jupyter and dependencies
RUN pip install --no-cache-dir notebook jupyterlab numpy

# Copy all project files
COPY . /app

# Expose Jupyter port
EXPOSE 8888

# Launch Jupyter Lab with no auth token
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]

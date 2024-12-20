# Use an official Python runtime as a base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Jupyter Notebook into the container
COPY "Gradient descent.ipynb" /app/

# Install Jupyter and any required dependencies
RUN pip install --no-cache-dir notebook matplotlib

# Command to start Jupyter Notebook (expose it on port 8888)
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

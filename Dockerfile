FROM runpod/base:0.0.0-cuda0.0.0-python0.0.0

# Set the working directory
WORKDIR /app

# Copy the entire repository into the /app directory
COPY . .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Expose the default port for the web UI
EXPOSE 7860

# Start the Wan2GP application
CMD ["python", "app.py"]

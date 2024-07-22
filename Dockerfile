# Using the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.9-slim

# Set the working directory in the container.
WORKDIR /app

# Copy the requirements file into the container.
COPY python/requirements.txt python/requirements.txt

# Install the required dependencies.
RUN pip install --no-cache-dir -r python/requirements.txt

# Copy the rest of the application code into the container.
COPY . .

# Expose port 8501 for Streamlit.
EXPOSE 8501

# Run the Streamlit app.
CMD ["streamlit", "run", "python/app.py"]

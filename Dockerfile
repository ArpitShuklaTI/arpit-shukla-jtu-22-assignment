# Specify base image.
FROM python:3.9

# Set working directory.
WORKDIR /assignment

# Expose port 8000 for your FastAPI server.
EXPOSE 8000

# Install Python requirements using Pip.
COPY requirements.txt assignment/requirements.txt
RUN pip install -r assignment/requirements.txt

# Copy your codebase into the Docker container.
COPY . .

# Run FastAPI server on the port exposed above.
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--reload" ]

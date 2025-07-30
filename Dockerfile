FROM icr.io/ibmz/python:3.10.6

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install pymongo

# Copy the rest of the application code into the container
COPY hello_world.py .

# Run the application
CMD ["python", "hello_world.py"]

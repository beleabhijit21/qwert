# Use an official Python runtime as a parent image
FROM python:3.11

# Set the working directory to /app/profit_guide
WORKDIR /app/project1

# Copy the requirements file into the container at /app/profit_guide
COPY requirements.txt /app/project1/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app/profit_guide
COPY . /app/project1/

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches 
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
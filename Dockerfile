# Use an official Python runtime as a parent image
FROM python:3.13.0

# Set environment variables to prevent Python from writing .pyc files to disk and to ensure the output is sent to stdout and stderr
ENV PYTHONUNBUFFERED 1

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Django will run on
EXPOSE 8000

# Run the Django development server (You should ideally configure this for production)
CMD ["python", "profiles/manage.py", "runserver", "0.0.0.0:8000"]
#ENTRYPOINT ["python", "app.py"]

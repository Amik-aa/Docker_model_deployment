FROM python:3.9-slim  

# specifies the base image for the Docker container. In this case, it's using the official Python 3.9 slim image

EXPOSE 5002

WORKDIR /app
COPY . /app

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:5002", "app:app"]

#Specifies the command to run when the container starts

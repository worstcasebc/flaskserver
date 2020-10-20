# set base image (host OS)
FROM python:3.8

# set the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory
COPY requirements.txt .

# install dependencies
RUN pip install --upgrade pip \
    pip install --trusted-host pypi.python.org -r requirements.txt

# copy the content of the local src directory to the working directory
COPY src/ /app/

# command to run on container start
CMD [ "python", "./app.py" ]
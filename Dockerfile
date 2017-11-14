FROM ubuntu:xenial
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get update; apt-get install -y mpi-default-dev 
ADD ./code /code
WORKDIR /code
#RUN pip install -r requirements.txt
CMD ["python", "example.py"]


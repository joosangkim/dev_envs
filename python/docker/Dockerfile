FROM ubuntu:18.04
LABEL author="https://github.com/joosangkim"

RUN apt-get update 
RUN apt-get upgrade -y

RUN apt-get install python3.8 python3.8-dev python3.8-venv python3-pip build-essential vim -y

RUN echo "alias python=python3.8" >> ~/.bashrc
RUN echo "alias pip=pip3" >> ~/.bashrc
CMD ["python", "--version"]
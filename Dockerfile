FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install net-tools sudo
RUN pip install --upgrade pip
WORKDIR /app
COPY ./ /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]

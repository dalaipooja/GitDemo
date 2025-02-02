FROM ubuntu:latest
RUN apt-get update && \ 
      apt-get install -y python3 python3-pip && \
      rm -rf /var/lib/apt/lists/*
RUN pip3 install --break-system-packages Flask
WORKDIR /python_app
COPY . /python_app
CMD ["python3", "app.py"]
EXPOSE 5000
ENV DB_NAME="db_testing"
VOLUME /myvol

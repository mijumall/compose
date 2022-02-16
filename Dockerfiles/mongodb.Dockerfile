FROM ubuntu:latest 
SHELL ["/bin/bash", "-c"]
RUN apt update && apt full-upgrade -y && apt install -y less vim unzip curl

# Install MongoDB
RUN apt install -y gnupg
RUN curl https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
RUN apt update && apt install -y mongodb-org
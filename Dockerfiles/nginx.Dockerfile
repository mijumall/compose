FROM ubuntu:latest 
SHELL ["/bin/bash", "-c"]
RUN apt update && apt full-upgrade -y && apt install -y less vim unzip curl nginx
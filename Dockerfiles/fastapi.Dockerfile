FROM python:latest
SHELL ["/bin/bash", "-c"]
RUN apt update && apt full-upgrade -y && apt install -y vim less unzip curl
RUN pip install -U pip setuptools wheel && pip install fastapi uvicorn python-multipart pyjwt passlib[bcrypt] pymongo
WORKDIR /workspace

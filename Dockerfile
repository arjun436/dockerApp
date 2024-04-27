# Base python docker image
FROM python:3.12.3-slim-bookworm

# import code
ADD . /code

# Changing the directory
WORKDIR /code

# Installing lib
RUN pip install flask

# Exposing the port
EXPOSE 5002
#Running python file
CMD python main.py


###########################################################################################################
# command for building the app and location in terminal
# docker build --no-cache -t arjun436/flaskapp .
# docker build -t arjun436/flaskapp .
#
# to view the built images run following command
# docker images
# docker --version
# dcoekr ps -> shows running containers
# docker ps -a -> shows all running and exited containers
#
# Docker run command to create docker container provide port and docker app name
# docker run -it -p 5001:5001 arjun436/flaskapp
# docker login
# docker context use default
# docker login -u arjun436 -p Anwit143$
# docker push
# docker push arjun436/flaskapp:latest
# docker pull imagename
# docker run -it -d imagename -> used to create container from an image
# docker ps -a ->shows all running and exited containers from image
# docker stop containerid -> stops running container
# docker stop ed3631723769


# kubectl config set-cluster arjun436/flaskapp
# Kubectl create -f pod.yaml
# kubectl get namespaces
# kubectl get pods
# kubectl get pods --watch
# kubectl get pods --namespace=default
# kubectl config set-context --current --namespace=default

# minikube start
# minikube status
# minikube stop
# minikube delete
# minikube dashboard
# kubectl describe pod myfirstpod

# replicas
# Kubectl create -f replication.yaml
# kubectl get rc
# kubectl apply -f replication.yaml
# kubectl get rs
# kubectl delete rc myfirstpodrc
# Kubectl create -f deployment.yaml
# kubectl get all
# kubectl describe deploy myfirstpodrs
# kubectl delete deployment myfirstpod


# https://hub.docker.com/r/selenium/standalone-chrome/#!
# docker pull selenium/standalone-chrome
# docker run -d -p 4444:4444 -p 7900:7900 --shm-size="2g" selenium/standalone-chrome:latest
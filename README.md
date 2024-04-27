# dockerApp
 
1. What is Docker:
    Docker is the abse engine installed on the host machine to build and run containers using docker components and services.
    Docker uses the client-server architecture.
    Docker client and server communicate using REST API.
    Docker client is a service whoch runs a command. The command is translated using REST API and is sent to docker demon(server).

Docker Engine:
    client                                      Server
    Docker CLI  <-------- REST API ----------> Docker demon

2. Docker Image: 
    They are starting point for anyone using docker.
    A docker image is read only immutable template that defines how a container will be realized.
    A docker image is read only template that containes set of instructions for creating a container that can run on the docker platform. 
    It provides a convenient way to package up applications and preconfigured server environments, which you can ise for your own private use or share publicly with other docker users.

Anotomy of docker image:
    Interactive: By running a container from an existing docker image, manually changing the container through a series of live steps and saving the resulting state as new image.
    Dockerfile: By constructing a plain text file, know a s docker file , which provides the specifications for creating a docker image.

    Dockerfile ------build-----> Docker image

3. Docker Container:
    A docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application:
    code, runtime, system tools, system libraries and settings.

    Docker Image -----Run--------> Docker container

How does docker image and docker container co-relate:
    The key difference between Docker image vs a container is that a docker image is readonly immutable template that defines how a container will be realied and a docker container is a runtime instance of a docker image.
    All the docker images becomes docker containers when they run om the docker engine.

4. Docker Registery:
    Containers registeries are catalogs of storage locations, known as repositories, where you can push and pull container images.
    Docker Register can be public or private repositories.
    we can find the registeries in docker hub.

    Docker Registery can be third party registeries:
        Amazon Elastic container registery(ECR)
        Azure container registery 
        Google cloud platform(GCP) container registery

Docker Architecture:
                                    Docker Server
    Docker client:  |---------------------------------------------------|
    Build 1         |                                                   |
    Pull 2          |  Docker Daemon       |   Docker Registery         |
    Run 3           |  Docker container 3  |   2 Docker Images          |
                    |                                                   |
                    |                          1 Docker File Build      |
                    |---------------------------------------------------|
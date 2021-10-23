# Docker Study Repository with Nestjs project

## install nestjs & a project
- npm i -g @nestjs/cli
- nest new docker-study

## create a Dockerfile
- [Dockerfile](https://github.com/Docker-Study/James/blob/635122b36013bf12aabe7aa0cc6b963caf810614/Dockerfile)

## build an image with the Dockerfile
- docker build -t up1912/docker-study:latest .

## check image list
- docker images

## run the created image in a container
- docker run -it -p 9999:9999 -d up1912/docker-study

## check the container process status
- docker ps

## stop a running container
- docker stop **_containerID_** : gracefully stop
- docker kill **_containerID_** : immediately stop

## remove a stop container
- docker rm **_containerID_**

## remove an image
- docker rmi **_imageID_**



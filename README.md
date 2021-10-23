# Docker Study Repository with Nestjs project

## install nestjs & a project
- npm i -g @nestjs/cli
- nest new docker-study

## create a Dockerfile
- ddd

## build an image with the Dockerfile
- docker build -t up1912/docker-study:latest .

## check image list
- docker images

## run the created image in a container
- docker run -it -p 9999:9999 -d up1912/docker-study

## check the container process status
- docker ps

## stop a running container
- docker stop <containerID> : gracefully stop
- docker kill <containerID> : immediately stop

## remove a stop container
- docker rm <containerID>

## remove an image
- docker rmi <imageID>



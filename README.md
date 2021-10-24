# Docker Study Repository with Nestjs project

## install nestjs & a project
- npm i -g @nestjs/cli
- nest new docker-study

## create a Dockerfile
- [Dockerfile](https://github.com/Docker-Study/James/blob/635122b36013bf12aabe7aa0cc6b963caf810614/Dockerfile)

## build an image with the Dockerfile
- **docker build -t up1912/docker-study:latest .**

- Result (_Building an Image is used only **FROM** and **RUN** keywords in the Dockerfile_)<br>
<img width="908" alt="스크린샷 2021-10-24 오후 1 54 51" src="https://user-images.githubusercontent.com/78688891/138581375-28c5e8e0-7123-452e-8eb5-8918d080a388.png">

## check image list
- **docker images**<br>
<img width="571" alt="스크린샷 2021-10-24 오후 2 05 42" src="https://user-images.githubusercontent.com/78688891/138581623-7a9adb87-3ae7-49f0-be9d-0fa30f35744f.png">

- Docker desktop images
<img width="1239" alt="스크린샷 2021-10-24 오후 1 56 14" src="https://user-images.githubusercontent.com/78688891/138581387-a96e1157-2173-4bfa-9b26-3f00af46aef4.png">


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



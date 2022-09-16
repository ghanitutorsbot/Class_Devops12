
Dockerhub Account
 create an account - https://hub.docker.com/
Dockerhub account

docker setup in local machine

docker commands (CLI)


1. docker images - dockerhub 
2. Pull the docker images to your local - docker pull
3. verify the docker images
4. Create a container from the image
5. Do necessary changes to the container and build as a docker image
6. Push the latest docker images to the registry

(or)


Plain image (Tomcat, jenkins,java, ubuntu)
Pull plain image to the system (ubuntu)
From that image - Create a container (Local system a image)
Container - you can add your files (Containerid/name - unique) (git)
convert that container to new image (Super image)
Push the image to dockerhub
PUll to your production environment



Docker cli commands

Commands:
  
  build       Build an image from a Dockerfile
  
  
  


  images      List images
  ps          List containers
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  run         Run a command in a new container
  start       Start one or more stopped containers
  stop        Stop one or more running containers
  kill        Kill one or more running containers
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers  
  port        List port mappings or a specific mapping for the container
  attach      Attach local standard input, output, and error streams to a running container
  logs        Fetch the logs of a container
  history     Show the history of an image
  commit      Create a new image from a container's changes
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  rmi         Remove one or more images
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  exec        Run a command in a running container
         Example     docker exec -it containername/id bin/bash
  
  

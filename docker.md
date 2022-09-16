

Images

Plain image (Tomcat, jenkins,java, ubuntu)

Pull plain image to the system (ubuntu)
From that image - Create a container (Local system a image)
Container - you can add your files (Containerid/name - unique) (git)
convert that container to new image (Super image)
Push the image to dockerhub
PUll to your production environment

docker run -d -p 8988:80 --name sumanginx1 nginx

docker run -d -P --name sumanginx1 nginx
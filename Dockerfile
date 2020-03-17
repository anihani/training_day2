FROM fedora
#it will be base image
MAINTAINER hanumesh@gmail.com
RUN yum install httpd -y
WORKDIR /var/www/html/
#Changing working directory to documentroot of app server
COPY . .
#copy can only copy data from current local dir to docker image
EXPOSE 80
# it will tell docker image to use 80 port for app server
#CMD httpd -DFOREGROUND
#it will start parent as http app server :WQ
ENTRYPOINT httpd -DFOREGROUND
#same as cmd by we can not replace it by argument

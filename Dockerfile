#using latest alpine image
FROM alpine:latest

#install apache2 webserve in container
RUN apk update &&  apk add --no-cache  apache2  

#copy index files from current folder to document root
COPY . /var/www/localhost/htdocs

#Expose port 80 to outside traffic
EXPOSE 80

#start the apache2 server process
CMD ["httpd", "-D","FOREGROUND"]
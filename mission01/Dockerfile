FROM ubuntu:latest

RUN     apt-get update && apt-get install -y nginx &&   \
        service nginx configtest &&                     \
        echo "<html><h1>Hello World!</h1></html>" > /usr/share/nginx/html/index.html

EXPOSE 80

CMD service nginx start & /bin/bash

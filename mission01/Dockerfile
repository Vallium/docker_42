FROM    ubuntu:latest

ENV     USER aalliot
ENV     HOSTNAME 42born2code

RUN     apt-get update && apt-get install -y nginx &&                                   \
        service nginx configtest &&                                                     \
        echo "<html><h1>Hello World</h1></html>" > /usr/share/nginx/html/index.html &&  \
        sed -i "s/root:x:0:0:root/$USER:x:0:0:root/g" /etc/passwd

EXPOSE  80

CMD     service nginx start & /bin/bash

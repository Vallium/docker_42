FROM    ubuntu:latest

ENV     USER aalliot
ENV     HOSTNAME 42Born2Code

RUN     apt-get update && apt-get install -y nginx &&               \
        service nginx configtest &&                                 \
        echo "<html><h1>Hello World!</h1></html>" > /usr/share/nginx/html/index.html && \
        cat /etc/passwd | grep -v ":0:0:" > /tmp/passwd &&          \
        echo "$USER:x:0:0:root:/root:/bin/bash" >> /tmp/passwd &&   \
        mv /tmp/passwd /etc/
EXPOSE  80

CMD     service nginx start & /bin/bash

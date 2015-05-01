docker build -t hello/world:v42 . && \
docker run -i -t -p 80:80 hello/world:v42

cp ~/.ssh/id_rsa.pub . && \
docker build -t docker/ssh:v42 . && \
rm id_rsa.pub

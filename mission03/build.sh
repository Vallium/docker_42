cp ~/.ssh/id_rsa.pub . &&							\
mkdir -p /Users/Shared/docker_volume &&				\
ln -s /Users/Shared/docker_volume viva_volume &&	\
rm -rf /Users/Shared/docker_volume/* &&				\
docker build -t docker/volume:v42 . &&				\
rm id_rsa.pub

FROM    ubuntu:latest

ENV     HOSTNAME 42born2code

RUN		apt-get update &&														\
		apt-get upgrade &&														\
		apt-get install -y openssh-server &&									\
		sed -i 's/Port 22/Port 42/g' /etc/ssh/sshd_config &&					\
		useradd -s "/bin/bash" aalliot &&										\
		mkdir -p /home/aalliot/.ssh

ADD		id_rsa.pub /home/aalliot/.ssh/authorized_keys

EXPOSE  42

CMD    service ssh start & /bin/bash

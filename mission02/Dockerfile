FROM	ubuntu:latest

ENV		USER aalliot
ENV		HOSTNAME 42born2code

RUN		apt-get update &&														\
		apt-get upgrade &&														\
		apt-get install -y openssh-server &&									\
		sed -i 's/Port 22/Port 42/g' /etc/ssh/sshd_config &&					\
		useradd -s "/bin/bash" $USER &&										\
		mkdir -p /home/$USER/.ssh

RUN		mkdir -p /home/$USER/volume

VOLUME	["/home/$USER/volume"]

ADD		id_rsa.pub /home/$USER/.ssh/authorized_keys

EXPOSE	42

CMD		service ssh start & /bin/bash

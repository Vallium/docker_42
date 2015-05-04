FROM    ubuntu:latest

ENV     HOSTNAME 42born2code

RUN		apt-get update &&														\
		apt-get upgrade &&														\
		apt-get install -y openssh-server &&									\
		cat /etc/ssh/sshd_config | grep -v "Port 22" > /tmp/sshd_config_tmp &&	\
		echo "Port 42" > /etc/ssh/sshd_config &&								\
		cat /tmp/sshd_config_tmp >> /etc/ssh/sshd_config &&						\
		useradd -s "/bin/bash" aalliot &&										\
		mkdir -p /home/aalliot/.ssh

ADD		id_rsa.pub /home/aalliot/.ssh/authorized_keys

EXPOSE  42

CMD    service ssh start & /bin/bash

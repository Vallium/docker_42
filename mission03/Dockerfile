FROM    ubuntu:latest

ENV     HOSTNAME 42born2code

RUN		apt-get update &&														\
		apt-get upgrade &&														\
		apt-get install -y openssh-server &&									\
		cat /etc/ssh/sshd_config | grep -v "Port 22" > /tmp/sshd_config_tmp &&	\
		echo "Port 42" > /etc/ssh/sshd_config &&								\
		cat /tmp/sshd_config_tmp >> /etc/ssh/sshd_config &&						\
		useradd -s "/bin/bash" aalliot &&										\
		mkdir -p /home/aalliot/.ssh &&											\
		echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC8ISX9xG6CFpMjdj8QV0OEEU0jkB2exmLzlwKr+8P0bAr7F6pxc7PesmHHmHKjKzuyu2ozTPm7Vv2oHTOG6RTduzmqpJyvxoq9rO9giRwNtAiTugi2ZlmLvYwBdzXb1KqdxiwIzuG+umY8o4E3+NVGs0HTfaG/r99H5fnfmdP9dO8i7AJkrC/GTGFFuZXypufyuuzcj2YjNVVvB5UwBl6npJbTGD0vaeyePIeYc7T2hi6LIASivGCnv6nORwW/lECmEzuloGEIqG57599ExM6y8wCNGhwPHgUUAnEAseEM+5rzyF8uX8Bar1LlPk9LcQhI29BKAZ1IQp6CBJjPRhVb aalliot@e2r7p8.42.fr" > /home/aalliot/.ssh/authorized_keys

EXPOSE  42

CMD    service ssh start

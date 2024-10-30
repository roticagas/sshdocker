FROM ubuntu:14.04.4
RUN sudo apt-get -y update

# SSH
RUN apt-get -y install openssh-server
RUN mkdir -p /var/run/sshd

# authorize SSH connection with root account
RUN sed -i '/^#/!s/PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sudo service ssh restart

# change password root
RUN echo "root:docker"|chpasswd

EXPOSE 22
CMD    /usr/sbin/sshd -D

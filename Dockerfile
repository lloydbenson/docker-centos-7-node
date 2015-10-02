FROM centos:7
MAINTAINER Lloyd Benson <lloyd.benson@gmail.com>
RUN yum -y update
RUN yum -y install epel-release git sudo
RUN useradd docker
RUN echo "docker ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ADD install_node.sh /home/docker/install_node.sh
USER docker
RUN /home/docker/install_node.sh

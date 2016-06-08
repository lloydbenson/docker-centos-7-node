FROM centos:7
MAINTAINER Lloyd Benson <lloyd.benson@gmail.com>
RUN yum -y update
RUN yum -y install make gcc gcc-c++
ADD install_node.sh /tmp/install_node.sh
RUN /tmp/install_node.sh && rm -f /tmp/install_node.sh

FROM centos:7
MAINTAINER Lloyd Benson <lloyd.benson@gmail.com>
ENV NODEJS_VERSION=v4.4.5
ENV PATH=/apps/node/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/bin

RUN yum -y install make gcc gcc-c++ && yum -y clean all
RUN mkdir /apps && cd /apps && curl -s -L -O https://nodejs.org/dist/${NODEJS_VERSION}/node-${NODEJS_VERSION}-linux-x64.tar.xz && tar xf node-${NODEJS_VERSION}-linux-x64.tar.xz && mv node-${NODEJS_VERSION}-linux-x64 node

CMD "npm start"

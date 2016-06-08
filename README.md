# docker-centos-7-node
docker container for node on centos 7 which gets the latest nvm, node and npm versions

```sh
docker pull lloydbenson/docker-centos-7-node
docker run -it --name=test lloydbenson/docker-centos-7-node /bin/bash
nvm --version
npm --version
node --version
```

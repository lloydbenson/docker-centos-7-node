# docker-centos-7-node
docker container for node on centos 7 which gets the latest nvm, node and npm versions

```sh
docker pull lloydbenson/docker-centos-7-node
docker run -it --name=test lloydbenson/docker-centos-7-node /bin/bash
nvm --version
npm --version
node --version
```

Note: this creates a docker user and puts you in the /home/docker directory.  Includes gcc, gcc-g++, make, sudo, and git packages.

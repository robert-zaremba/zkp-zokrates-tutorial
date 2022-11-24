


# docker run --rm -v $PWD/code:/home/zokrates/code -ti zokrates/zokrates /bin/bash

containerName=Zokrates
if docker ps -a --format '{{.Names}}' | grep -Eq "^${containerName}$"; then docker start -ai $containerName; else docker run --name $containerName -v $PWD/code:/home/zokrates/code -ti zokrates/zokrates /bin/bash; fi


# docker container stop Zokrates; docker rm Zokrates

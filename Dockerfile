FROM node:latest

WORKDIR /modsbots

EXPOSE 3000

COPY . /modsbots

RUN apt-get update &&\
    apt install --only-upgrade linux-libc-dev &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    npm install
    
CMD ["/bin/bash","/modsbots/mods.sh"]

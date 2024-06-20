FROM node:latest



EXPOSE 3000



RUN apt-get update &&\
    apt install --only-upgrade linux-libc-dev &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    npm install
COPY mods.sh /mods.sh
RUN chmod 744 /mods.sh
#CMD ["/bin/bash","/mods.sh"]
COPY mods.sh /usr/local/bin/
ENTRYPOINT ["mods.sh"]
CMD [ "node", "index.js" ]

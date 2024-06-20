FROM node:alpine

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl gcompat iproute2 coreutils &&\
    apk add --no-cache bash gawk &&\
    chmod +x index.js mods.sh &&\
    npm install

CMD ["bin/bash", "/mods.sh"]

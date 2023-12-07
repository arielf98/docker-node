FROM alpine:3.18

ENV NODE_VERSION 20.10.0

#create node app dir 
WORKDIR /usr/src/app

#copy all package.json file to node dir
COPY package*.json ./

RUN apk update && apk add -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apk update && apk add -y nodejs

RUN npm install

#bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]

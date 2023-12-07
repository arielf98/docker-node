FROM alpine:3.18

ENV NODE_VERSION 20.10.0

#create node app dir 
WORKDIR /usr/src/app

#copy all package.json file to node dir
COPY package*.json ./

RUN apt-get update && apt-get upgrade -y && \
apt-get install -y nodejs \
npm

RUN npm install

#bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]

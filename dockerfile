FROM node:20.10.0

#create node app dir 
WORKDIR /usr/src/app

#copy all package.json file to node dir
COPY package*.json ./

RUN npm install

#bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]

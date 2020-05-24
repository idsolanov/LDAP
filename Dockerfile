#base image based in node.js
FROM node:current-slim

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 389

CMD [ "npm","start"]


FROM node:14-alpine

WORKDIR /idp

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT ["node", "app.js"]

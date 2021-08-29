FROM node:alpine3.14

WORKDIR /app

COPY package.json package-lock*.json ./

RUN npm install && npm cache clean --force

COPY . .

CMD [ "npm", "start" ]
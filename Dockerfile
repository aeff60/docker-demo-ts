FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install 

COPY . .

RUN npx tsc

EXPOSE 8080

CMD ["node", "src/app.js"]
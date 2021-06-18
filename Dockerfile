FROM node:14

WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .
EXPOSE 3000
RUN npm run build
ENV PORT 3000

CMD [ "npm", "run", "start" ]

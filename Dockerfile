FROM node:22.13.1-alpine3.20
WORKDIR /app
COPY ./package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
# CMD ["node", "server.ts"]
CMD [ "npm", "run", "dev" ]
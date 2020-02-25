FROM node:10-alpine
RUN mkdir -p /app && chown -R node:node /app
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY --chown=node:node . .
USER node
EXPOSE 8080
CMD [ "node", "app.js" ]

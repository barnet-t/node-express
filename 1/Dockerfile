FROM node:9.5.0-alpine

ENV NODE_ENV=development

RUN npm install -g express-generator@4.15.0 && \
    express --view=pug app

WORKDIR /app

RUN npm install

EXPOSE 3000
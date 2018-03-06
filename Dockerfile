# alpine:3.6
FROM node:9.5.0-alpine

ENV NODE_ENV=development

RUN apk update && \
    apk --no-cache add python2=2.7.14-r0 && \
    npm install -g express-generator@4.15.0 && \
    express --view=pug app

WORKDIR /app

RUN npm install

EXPOSE 3000
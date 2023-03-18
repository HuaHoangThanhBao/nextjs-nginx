FROM node:18-alpine as local

RUN mkdir -p /app 

WORKDIR /app

COPY package.json yarn.lock /app/

RUN yarn

ENV NODE_ENV development

EXPOSE 3000

CMD ["yarn", "dev"]
FROM node:8.11.4-alpine AS dev
WORKDIR /usr/src/app
ENV NODE_ENV development
COPY . .
RUN npm install

FROM node:8.11.4-alpine AS runtime
WORKDIR /usr/src/app
ENV NODE_ENV production
COPY . .
RUN npm install
CMD [ "node", "server.js" ]
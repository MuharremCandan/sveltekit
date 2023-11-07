FROM node:19.7-alpine AS sk-build
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install
RUN npm run build

FROM node:19.7-alpine
WORKDIR /usr/src/app


EXPOSE 3000
CMD ["npm", "run", "start:node"]
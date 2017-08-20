LABEL maintainer="conrad@operationcode.org"
FROM node:boron
RUN npm install --global datafire
ADD *.js .
ADD DataFire.yml .
RUN datafire serve --port 3000
EXPOSE 3000
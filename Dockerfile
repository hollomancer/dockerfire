LABEL maintainer="conrad@operationcode.org"
FROM node:boron
RUN npm install --global datafire
ADD *.js .
ADD *.yml .
RUN cat *.yml > DataFire.yml
RUN datafire serve --port 3000
EXPOSE 3000
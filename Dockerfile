FROM node:boron
LABEL maintainer="conrad@operationcode.org"

RUN npm install --global datafire
RUN npm install @datafire/slack
RUN npm install @datafire/sendgrid
RUN npm install @datafire/medium
RUN npm install @datafire/github
RUN npm install @datafire/linkedin

ADD *.js .
ADD *.yml ./
RUN cat *.yml > DataFire.yml

RUN datafire serve --port 3000
EXPOSE 3000
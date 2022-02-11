FROM node:lts-alpine
ARG BROWSER=chrome
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npx grunt build:$BROWSER

FROM mhart/alpine-node:10 as base
EXPOSE 8888

WORKDIR /app

ADD package.json /app/
RUN npm install

ADD . /app

CMD ["node", "app"]
# CMD ["node", "./node_modules/.bin/next", "start"]
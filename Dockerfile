FROM node:8.11.3
EXPOSE 8888

WORKDIR /app

ADD package.json /app/
RUN npm install

ADD . /app

ENTRYPOINT ["/auth"]

CMD ["node", "app"]
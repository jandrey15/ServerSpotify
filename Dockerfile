FROM node:6.11
EXPOSE 8888

WORKDIR /app

ADD package.json /app/
RUN npm install

ADD . /app

# ENTRYPOINT ["/app/auth/app.js"]

CMD ["node", "app"]
# CMD ["node"]
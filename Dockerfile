FROM node:10.15.1-alpine

RUN apk add --no-cache tini && npm install -g docsify-cli@latest

WORKDIR /docs

ADD docs .

EXPOSE 3000

ENTRYPOINT ["/sbin/tini", "--"]
CMD [ "docsify", "serve", "." ]

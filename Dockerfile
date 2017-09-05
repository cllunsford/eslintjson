FROM node:8-alpine

RUN mkdir /src
RUN npm install -g \
    eslint \
    prettier \
    eslint-plugin-json \
    eslint-plugin-prettier \
    rm -rf /root/.npm

WORKDIR /src
ENTRYPOINT ["/usr/local/bin/eslint"]


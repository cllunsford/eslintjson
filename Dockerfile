FROM node:8-alpine

RUN mkdir /src
RUN npm install -g \
    eslint \
    prettier \
    eslint-plugin-json \
    eslint-plugin-prettier \
    && rm -rf /root/.npm

ADD .eslintrc.json /src/.eslintrc.json
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/eslint"]


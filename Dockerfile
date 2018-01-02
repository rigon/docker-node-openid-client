FROM node:alpine

# Choose which version you want
# follow Git terminology to checkout tags: "tags/v<version>"
ENV VERSION master

RUN set -x \
    && apk update \
    && apk add git \
    && git clone https://github.com/panva/node-openid-client.git \
    && cd node-openid-client \
    && git checkout $VERSION \
    && npm install \
    && npm run test \
    && rm -rf .git \
    && apk del git

EXPOSE 3001
VOLUME [ "/node-openid-client/example/" ]
CMD [ "node", "/node-openid-client/example/index.js" ]

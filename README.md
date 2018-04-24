# Docker node openid-client

Docker image with [Node OpenID Connect Client](https://github.com/panva/node-openid-client) (Relying Party) to connect to a Provider.

## How to run

    docker run -p 80:3001 rigon/node-openid-client


## Docker image with custom Relying Party

The `sed` command replaces the Relying Party's URL:

    FROM rigon/node-openid-client
    RUN sed -i 's/https\:\/\/guarded-cliffs-8635.herokuapp.com/http\:\/\/www.example.com/g' /node-openid-client/example/index.js

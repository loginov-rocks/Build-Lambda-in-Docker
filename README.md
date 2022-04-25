# Build Lambda in Docker

How to build and package Node.js Lambda code along with dependencies in Docker:
[Medium](https://loginov-rocks.medium.com/building-node-js-lambda-with-dependencies-in-a-docker-container-68e7cb81c9a7)

## Quick Start

```shell
npm run package
```

And find `function.zip` ready to be uploaded to AWS Lambda.

Example uses [sharp](https://www.npmjs.com/package/sharp) package to show case, TypeScript and Webpack, however, it's not required and only used for illustration purposes.

## Gists

* [Dockerfile](https://gist.github.com/loginov-rocks/cd6ccbc585b17a63419c806c0b706682)

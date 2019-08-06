FROM node:12.7.0-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
COPY build /app/build
RUN apk add yarn
RUN yarn global add serve
RUN yarn
CMD ["serve", "-s", "/app/build"]


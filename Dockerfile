# syntax=docker/dockerfile:1
FROM node:19-bullseye
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install
RUN docker run --expose=10000
EXPOSE 10000
COPY . .
CMD [ "node", "index.js" ]

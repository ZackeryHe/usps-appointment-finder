FROM node:16

WORKDIR /src

COPY ["package.json", "yarn.lock", "./"]
RUN yarn install --network-timeout 100000
COPY main.js .

ENTRYPOINT [ "sh", "-c", "node main.js $ZIP $AREA" ]
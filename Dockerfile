FROM docker.io/node

WORKDIR /src

RUN npm install --offline --ignore-scripts

CMD ["node", "index.js"]


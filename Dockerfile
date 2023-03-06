FROM docker.io/node

WORKDIR /src

RUN ls /src

RUN npm install --offline --ignore-scripts

RUN npm list

CMD ["node", "index.js"]

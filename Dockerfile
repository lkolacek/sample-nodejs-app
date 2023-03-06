FROM docker.io/node

WORKDIR /src

RUN ls /src
RUN cp /src /opt && \
    cd /opt && \
    npm install --offline --ignore-scripts

RUN npm list

CMD ["node", "index.js"]

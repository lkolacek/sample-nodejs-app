FROM docker.io/node

WORKDIR /src

RUN ls /src
RUN cp -r /src /opt && \
    cd /opt && \
    npm install --offline --ignore-scripts

RUN npm list

CMD ["node", "index.js"]

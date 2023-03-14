FROM docker.io/node

RUN ls /tmp/npm/output
RUN ls /tmp/npm/source

RUN mkdir /opt/sample-app

RUN cd /tmp/npm/source && \
    npm install && \
    npm list

CMD ["node", "index.js"]


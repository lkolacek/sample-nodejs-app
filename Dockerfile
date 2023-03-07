FROM docker.io/node

RUN ls /src
RUN mkdir /opt/sample-app

RUN cp -r /src/* /opt/sample-app && \
    cd /opt/sample-app && \
    npm install --offline --ignore-scripts && \
    npm list

WORKDIR /opt/sample-app

CMD ["node", "index.js"]

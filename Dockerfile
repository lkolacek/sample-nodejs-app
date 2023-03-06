FROM docker.io/node

WORKDIR /src

RUN ls /src
RUN mkdir /opt/sample-app

RUN cp -r /src/* /opt/sample-app && \
    cd /opt/sample-app && \
    npm install --offline --ignore-scripts

RUN npm list

CMD ["node", "index.js"]

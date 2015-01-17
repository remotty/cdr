FROM node:0.10.35

ADD ./package.json /app/package.json
WORKDIR /app
RUN npm install
ADD . /app

ENV DOCKER_REMOTE tcp
ENV DOCKER_CERT_PATH /root/cert
ENV APIKEY abcdefg

CMD node server

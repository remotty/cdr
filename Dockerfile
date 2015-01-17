FROM node:0.10.35

ADD ./package.json /app/package.json
WORKDIR /app
RUN npm install
ADD . /app

ENV DOCKER_REMOTE https
ENV DOCKER_CERT_PATH /root/cert

CMD node server

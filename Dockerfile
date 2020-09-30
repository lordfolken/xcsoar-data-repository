FROM debian:buster-backports
RUN apt-get update && apt-get install --no-install-recommends -y -t buster-backports nodejs npm && apt-get clean
COPY package.json /tmp/ 
RUN cd /tmp && npm install && rm /tmp/package.json
WORKDIR /opt/repo
CMD npm test

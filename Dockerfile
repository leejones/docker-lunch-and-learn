FROM node:argon

ENV REVEALJS_VERSION="3.2.0"

RUN npm install -g grunt-cli

RUN  git clone https://github.com/hakimel/reveal.js.git && \
  cd /reveal.js && \
  git reset --hard "${REVEALJS_VERSION}"

WORKDIR /reveal.js
RUN npm install

CMD grunt serve

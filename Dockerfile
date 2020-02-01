FROM node:12.14

ENV THORIUM_VERSION 2.4.0
ENV NODE_ENV="production node build/server/index.js"
WORKDIR /usr/src

RUN curl -LJO "https://github.com/Thorium-Sim/thorium/archive/v${THORIUM_VERSION}.zip" \
    && unzip thorium-${THORIUM_VERSION}.zip \
    && mv thorium-${THORIUM_VERSION} app && rm thorium-${THORIUM_VERSION}.zip \
    && cd /usr/src/app \
    && yarn install \
    && npm run build

WORKDIR /usr/src/app

CMD [ "node build/server/index.js" ]

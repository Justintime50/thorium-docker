FROM node:12.14

ARG THORIUM_VERSION
WORKDIR /usr/src

RUN curl -LJO "https://github.com/Thorium-Sim/thorium/archive/v${THORIUM_VERSION}.zip" \
    && unzip thorium-${THORIUM_VERSION}.zip \
    && mv thorium-${THORIUM_VERSION} app && rm thorium-${THORIUM_VERSION}.zip \
    && cd /usr/src/app \
    && yarn install \
    && yarn run build

WORKDIR /usr/src/app
ARG NODE_ENV

CMD [ "node build/server/index.js" ]

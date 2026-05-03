ARG NODE=node:20-alpine

FROM $NODE AS build

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn config set registry https://registry.npmmirror.com && \
    yarn install --frozen-lockfile

COPY . .

RUN yarn run build

FROM $NODE

WORKDIR /app

COPY --from=build /app/.output ./
COPY --from=build /app/extra/healthcheck.mjs ./extra/healthcheck.mjs

EXPOSE 3000

HEALTHCHECK --interval=10s --timeout=5s --start-period=10s CMD ["node", "/app/extra/healthcheck.mjs"]

CMD ["/app/server/index.mjs"]

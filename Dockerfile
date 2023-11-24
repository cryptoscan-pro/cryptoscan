FROM node:16-alpine

ARG NODE_ENV
ENV NODE_ENV=$NODE_ENV

WORKDIR /src

RUN apk add --no-cache python3 make g++

COPY . .

RUN npm i -g pnpm
RUN pnpm i -f

ENV PORT 3000
EXPOSE $PORT

# CMD npm run dev

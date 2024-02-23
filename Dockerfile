# /nextjs-app/Dockerfile
FROM node:18.17.0-alpine as builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM node:18.17.0-alpine
RUN npm install -g next

WORKDIR /app

COPY --from=builder /app/package.json /app/package.json

COPY --from=builder /app/.next /app/.next

COPY --from=builder /app/public /app/public

COPY --from=builder /app/node_modules /app/node_modules

EXPOSE 3000

CMD ls -la /app/.next && next start

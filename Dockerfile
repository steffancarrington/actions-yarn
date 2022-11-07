FROM node:16.18.0-alpine

RUN apk add --no-cache git python3 build-base
RUN npm i -g --force yarn
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

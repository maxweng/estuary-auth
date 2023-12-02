FROM golang:1.18

COPY  ./api /app/api
COPY  ./core /app/core

WORKDIR /app/api

RUN go build -tags netgo -ldflags '-s -w' -o ../estuary-auth-api

WORKDIR /app/

COPY  ./.env .
CMD [ "./estuary-auth-api" ] 
FROM golang:1.27.1-alpine AS build-env
RUN apk add --no-cache git gcc musl-dev
WORKDIR /app
COPY . /app
RUN go mod download
RUN go build -o /app/katanax ./cmd/katana

FROM alpine:3.24.2
RUN apk add --no-cache bind-tools ca-certificates chromium
COPY --from=build-env /app/katanax /usr/local/bin/katanax

ENTRYPOINT ["katanax"]

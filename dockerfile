FROM golang:1.20-alpine

WORKDIR /app

COPY . . 

RUN go build -o ascii-web . 

LABEL maintainer="milli@ascii-web.com"
LABEL version="1.0"
LABEL description="Ascii Art Web Server"

EXPOSE 8080

CMD ["./ascii-web"]

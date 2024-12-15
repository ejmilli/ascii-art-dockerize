FROM golang:1.20-alpine

WORKDIR /app

COPY . . 

RUN go build -o ascii-web . 

EXPOSE 8080

CMD ["./ascii-web"]

LABEL milli@ascci-web.com
LABEL version="1.0"
LABEL description="Ascii Art Web Server"
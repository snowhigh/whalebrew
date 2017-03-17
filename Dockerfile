FROM golang:1.7

RUN mkdir -p /go/src/github.com/snowhigh/whalebrew
WORKDIR /go/src/github.com/snowhigh/whalebrew

COPY . /go/src/github.com/snowhigh/whalebrew
RUN go-wrapper download -t ./...
RUN go-wrapper install
CMD ["go-wrapper", "run"]

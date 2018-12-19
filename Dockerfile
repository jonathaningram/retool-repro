FROM golang:1.11.4

WORKDIR /myapp
COPY . .

RUN go build

RUN go get github.com/twitchtv/retool

# RUN retool add github.com/jteeuwen/go-bindata/go-bindata origin/master

CMD ["/bin/bash"]

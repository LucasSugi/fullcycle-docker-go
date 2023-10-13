FROM golang:1.21 as builder
WORKDIR /go/src/
COPY /src .
RUN go build main.go

FROM scratch
WORKDIR /src
COPY --from=builder /go/src /src
ENTRYPOINT [ "./main" ]

FROM golang:1.14-alpine AS builder

WORKDIR /go/src

COPY go.mod go.sum main.go ./
COPY ad ./ad

RUN go get && go build -o terraform-provider-ad .

FROM alpine:latest

COPY --from=builder /go/src/terraform-provider-ad /dist/terraform-provider-ad

CMD ["echo","This container is not intended to be run. The provider is in /dist/terraform-provider-ad."]

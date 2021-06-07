FROM golang:1.8-alpine
ADD . /go/src/hello-secret
RUN go install hello-secret

FROM alpine:latest
COPY --from=0 /go/bin/hello-secret .
ENV PORT 8080
CMD ["./hello-secret"]
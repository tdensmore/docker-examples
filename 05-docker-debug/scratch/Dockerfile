FROM golang:1.22-alpine AS builder
WORKDIR /build
ADD . /build/backend.go
RUN go mod init todd.com/backend
RUN CGO_ENABLED=0 GOOS=linux go build -o backend /build/backend.go

FROM alpine as PROD
COPY --from=builder /build/backend /backend
RUN chmod 777 /backend/backend
EXPOSE 8080
USER backend:backend
#CMD /backend/backend
ENTRYPOINT ["/backend/backend"]

# Build image
FROM golang:alpine AS build
WORKDIR /
RUN apk update && apk upgrade && apk --no-cache add build-base git
RUN git clone https://github.com/SherifEldeeb/ChirpForwarder.git
WORKDIR /ChirpForwarder/cmd/ChirpForwarder
RUN go build -v -o /ChirpForwarder

# The actual image
FROM alpine
COPY --from=build /ChirpForwarder /
# Placeholder for file out
RUN mkdir /chirps
# To hold the lastcheck file
RUN mkdir /.canary
CMD ["/ChirpForwarder"]


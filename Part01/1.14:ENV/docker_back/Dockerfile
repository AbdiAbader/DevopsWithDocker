# Getting images
FROM golang:1.16

# creating Work dir
WORKDIR /usr/src/app

# copy files

COPY . .
# expose
EXPOSE 8080
# env to frontend
ENV REQUEST_ORIGIN=http://localhost:5000
ENV ALLOWED_ORIGIN==http://localhost:5000

# run for build
RUN go build

# cmd

CMD ["./server"]
# Getting images
FROM golang:1.16

# creating Work dir
WORKDIR /usr/src/app

# copy files

COPY . .
# expose
EXPOSE 8080
# run for build
RUN go build

# cmd

CMD ["./server"]
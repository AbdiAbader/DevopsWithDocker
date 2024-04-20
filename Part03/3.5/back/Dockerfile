# Getting images
FROM golang:1.16

# creating Work dir
WORKDIR /usr/src/app

# copy files

COPY . .
RUN adduser appuser
RUN chown -R appuser /usr/src/app
RUN chown -R appuser /usr/src/app/go.mod
RUN chown -R appuser /usr/src/app/go.sum

USER appuser


# expose
EXPOSE 8080
# env to frontend
ENV REQUEST_ORIGIN=http://localhost:5000
ENV REQUEST_ORIGIN=http://localhost
ENV ALLOWED_ORIGIN==http://localhost
ENV ALLOWED_ORIGIN==http://localhost:5000

# run for build
RUN go build

# cmd

CMD ["./server"]
FROM golang:1.16-alpine


EXPOSE 8080

# working dir

WORKDIR /usr/src/app

# copy

COPY . .
# env to backend

ENV REQUEST_ORIGIN=http://localhost:5000
ENV ALLOWED_ORIGIN==http://localhost:80
ENV ALLOWED_ORIGIN==http://localhost:5000
# run

RUN go build && \
adduser -D appuser && \
chown -R appuser /usr/src/app && \
chown -R appuser /usr/src/app/go.mod && \
chown -R appuser /usr/src/app/go.sum

USER appuser

# command
CMD ["./server"]



# Use a smaller base image
FROM debian:buster-slim

# Expose port 8080
EXPOSE 8080

# Set the working directory
WORKDIR /usr/src/app

COPY . .
# env
ENV REQUEST_ORIGIN=http://localhost:5000


# Download and install Go
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    && rm -rf /var/lib/apt/lists/* && \
    wget -q https://golang.org/dl/go1.16.5.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz && \
    rm go1.16.5.linux-amd64.tar.gz \
    /usr/local/go/bin/go build && \
    useradd -m appuser && \
    chown -R appuser /usr/src/app


# Switch to the non-root user
USER appuser

# Command to run the application
CMD ["./server"]

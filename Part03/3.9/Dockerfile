# First stage: build the Go application
FROM golang:1.16-alpine AS builder

# Set working directory
WORKDIR /usr/src/app

# Copy the source code into the container
COPY . .

# Build the Go application statically
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server .

# Second stage: create a minimal image
FROM scratch

# Copy the compiled binary from the builder stage
COPY --from=builder /usr/src/app/server /server

# Set environment variables
ENV REQUEST_ORIGIN=http://localhost:5000
ENV ALLOWED_ORIGIN=http://localhost:80
ENV ALLOWED_ORIGIN=http://localhost:5000

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["/server"]

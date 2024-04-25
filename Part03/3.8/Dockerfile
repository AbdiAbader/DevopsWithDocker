# Stage 1: Build the frontend
FROM node:alpine AS builder

# Set working directory
WORKDIR /usr/src/app

# Copy frontend source code
COPY . .

# Set environment variable for backend URL
ENV REACT_APP_BACKEND_URL=http://localhost/api

# Install dependencies and build frontend
RUN npm install && \
npm run build && \
npm install -g serve

# Stage 2: Serve the built frontend with Nginx
FROM nginx:alpine

# Add non-root user
RUN adduser -D appuser

# Copy built frontend from the builder stage to Nginx
COPY --from=builder /usr/src/app/build /usr/share/nginx/html

# Set ownership of the Nginx directories to the non-root user
RUN chown -R appuser:appuser /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html

# Switch to the non-root user
USER appuser


EXPOSE 5000

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]


FROM node:18 AS builder

# Set working directory
WORKDIR /app

# Copy 
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Build the application
RUN npm run build

# Stage 2: Create a production image
FROM node:alpine

# Set working directory
WORKDIR /app

# Copy the built application from the previous stage
COPY --from=builder /app/build ./build

# Expose port 3000
EXPOSE 3000

# Set environment variables
ENV REQUEST_ORIGIN=https://localhost
ENV ALLOWED_ORIGIN=https://localhost

# Command to run the application
CMD ["npm", "start"]

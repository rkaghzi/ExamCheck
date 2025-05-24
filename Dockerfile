# Base image for Node.js
FROM node:16 AS base

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose the port the service runs on
EXPOSE 5432

# Set environment variables for JWT
ENV JWT_SECRET=your_jwt_secret_key
ENV JWT_EXPIRATION=3600

# Command to run the service
CMD ["npm", "start"]
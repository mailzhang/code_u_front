# Step 1: Build the Vue application
FROM node:16 as build-stage

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files into the Docker image
COPY . .

# Build the application for production
RUN npm run build

# Step 2: Setup the server using Nginx
FROM nginx:stable-alpine as production-stage

# Copy built assets from build-stage to the default nginx public folder
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80 to the outside once the container has launched
EXPOSE 80

# Run nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

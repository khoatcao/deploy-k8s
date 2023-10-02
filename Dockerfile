# Use an official Node.js runtime as the base image
FROM node:14

WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install


# Copy the rest of your application files to the container
COPY . .

# Expose port 8081 (the port your Node.js app is listening on)
EXPOSE 8081

# Command to run your Node.js application
CMD ["node", "Server.js"]
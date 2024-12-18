# Use Node.js 23 as the base image
FROM node:23

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present) into the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on (3000 in your case)
EXPOSE 3000

# Command to run the application (uses the start script defined in package.json)
CMD ["npm", "start"]

# Use official Node.js image
FROM node:16

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code
COPY . .

# Expose port (adjust if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
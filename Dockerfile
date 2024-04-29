# Use the official lightweight Node.js 17 image
FROM node:17-slim
# Set the working directory inside the container
WORKDIR /app
# Copy package.json and package-lock.json (if available)
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code
COPY . .
# Start the application
CMD ["npm", "start"]
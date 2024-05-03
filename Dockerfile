# Use the official Node.js  LTS (Long Term Support) image as a base
FROM node:lts-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js app for production
RUN npm run build

# Expose the port Next.js runs on (usually 3000)
EXPOSE 3005

# Set the command to run the Next.js app
CMD ["npm", "start"]

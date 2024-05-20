# Use the official Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Install dependencies
RUN npm install

# Build the Next.js application
RUN npm run build

# Define the command to run the application
CMD ["npm", "start"]
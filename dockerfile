# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages
RUN npm install

# Make the app available on port 3000
EXPOSE 3000

# Define the command to run your app
CMD ["node", "server.js"]

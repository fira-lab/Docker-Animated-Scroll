# Use an official Node.js runtime as the parent image
FROM node:alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app .

# Install any needed packages specified in package.json
RUN npm install

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.js using node when the container launches
CMD ["node", "app.js"]

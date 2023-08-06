# Set the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY src/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY src ./

# Copy the entry-point script and make it executable
COPY entry-point.sh ./
RUN chmod +x /app/entry-point.sh

# Set the command to run your app
ENTRYPOINT [ "/app/entry-point.sh" ]


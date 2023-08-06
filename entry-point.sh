#!/bin/sh

# If no argument was passed, set the default port to 8080
port=${1:-8080}

# Start the server
export PORT=$port
echo "Hey"
echo "Server listenning on port ${port}"
npm start

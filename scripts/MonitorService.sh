#!/bin/bash

# Check if localhost responds with HTTP 200 OK
if curl -s -o /dev/null -w "%{http_code}" http://localhost | grep -q "200"; then
    echo "Local Apache HTTP Server is running fine."
    echo "Succeeded"
else
    echo "Local Apache HTTP Server may not be running or encountered an issue."
fi


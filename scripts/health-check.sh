
#!/bin/bash

echo "Checking Nginx service..."

if systemctl is-active --quiet nginx; then
    echo "SUCCESS: Nginx is running."
else
    echo "ERROR: Nginx is not running."
    exit 1
fi

echo "Checking website response..."

if curl -fsS http://localhost/ > /dev/null; then
    echo "SUCCESS: Website is responding."
else
    echo "ERROR: Website is not responding."
    exit 1
fi


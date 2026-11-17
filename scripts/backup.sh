
#!/bin/bash

set -e

BACKUP_DIR="$HOME/website-backups"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)

mkdir -p "$BACKUP_DIR"

sudo tar -czf "$BACKUP_DIR/website-$TIMESTAMP.tar.gz" \
    -C /var/www html

echo "Website backup completed!"
echo "Backup location: $BACKUP_DIR"


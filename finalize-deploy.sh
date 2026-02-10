#!/bin/bash
# Run this with sudo to complete the decision-matrix deployment
# Usage: sudo bash /var/www/decision-matrix/finalize-deploy.sh

set -e

echo "Testing nginx configuration..."
nginx -t

echo "Reloading nginx..."
systemctl reload nginx

echo "✅ Decision Matrix deployed successfully!"
echo "   URL: https://decision-matrix.entazis.dev/"

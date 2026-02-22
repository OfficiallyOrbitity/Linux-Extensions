#!/bin/bash

# =========================
# NW Tool Installer
# =========================

set -e

echo "🔧 Installing NW tool..."

# Check for sudo
if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root (use sudo)"
  exit 1
fi

# Check if nw file exists
if [ ! -f "nw" ]; then
  echo "❌ 'nw' file not found in current directory"
  exit 1
fi

# Copy to /usr/local/bin
cp nw /usr/local/bin/nw

# Set permissions
chmod +x /usr/local/bin/nw

echo "✅ Installed successfully!"

echo ""
echo "You can now run:"
echo "  nw interface check -eth0"

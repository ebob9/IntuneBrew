#!/bin/bash
# Uninstall script for Flycut
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Flycut..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Flycut if running..."
pkill -f "Flycut" 2>/dev/null || true

# Remove /Applications/Flycut.app
echo "Removing /Applications/Flycut.app..."
if [ -d "/Applications/Flycut.app" ]; then
    rm -rf "/Applications/Flycut.app" 2>/dev/null || true
elif [ -f "/Applications/Flycut.app" ]; then
    rm -f "/Applications/Flycut.app" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.generalarcade.flycut.plist
echo "Removing $HOME/Library/Preferences/com.generalarcade.flycut.plist..."
if [ -d "$HOME/Library/Preferences/com.generalarcade.flycut.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.generalarcade.flycut.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.generalarcade.flycut.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.generalarcade.flycut.plist" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

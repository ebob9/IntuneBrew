#!/bin/bash
# Uninstall script for Swift Shift
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Swift Shift..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Swift Shift if running..."
pkill -f "Swift Shift" 2>/dev/null || true

# Kill application with bundle ID com.pablopunk.Swift-Shift if running
echo "Stopping application with bundle ID com.pablopunk.Swift-Shift if running..."
killall -9 "com.pablopunk.Swift-Shift" 2>/dev/null || true

# Remove /Applications/Swift Shift.app
echo "Removing /Applications/Swift Shift.app..."
if [ -d "/Applications/Swift Shift.app" ]; then
    rm -rf "/Applications/Swift Shift.app" 2>/dev/null || true
elif [ -f "/Applications/Swift Shift.app" ]; then
    rm -f "/Applications/Swift Shift.app" 2>/dev/null || true
fi

# Remove $HOME/Library/HTTPStorages/com.pablopunk.Swift-Shift
echo "Removing $HOME/Library/HTTPStorages/com.pablopunk.Swift-Shift..."
if [ -d "$HOME/Library/HTTPStorages/com.pablopunk.Swift-Shift" ]; then
    rm -rf "$HOME/Library/HTTPStorages/com.pablopunk.Swift-Shift" 2>/dev/null || true
elif [ -f "$HOME/Library/HTTPStorages/com.pablopunk.Swift-Shift" ]; then
    rm -f "$HOME/Library/HTTPStorages/com.pablopunk.Swift-Shift" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.pablopunk.Swift-Shift.plist
echo "Removing $HOME/Library/Preferences/com.pablopunk.Swift-Shift.plist..."
if [ -d "$HOME/Library/Preferences/com.pablopunk.Swift-Shift.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.pablopunk.Swift-Shift.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.pablopunk.Swift-Shift.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.pablopunk.Swift-Shift.plist" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

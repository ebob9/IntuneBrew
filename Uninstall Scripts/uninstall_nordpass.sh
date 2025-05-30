#!/bin/bash
# Uninstall script for NordPass
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling NordPass..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping NordPass if running..."
pkill -f "NordPass" 2>/dev/null || true

# Kill application with bundle ID com.nordsec.nordpass if running
echo "Stopping application with bundle ID com.nordsec.nordpass if running..."
killall -9 "com.nordsec.nordpass" 2>/dev/null || true

# Remove /Applications/NordPass.app
echo "Removing /Applications/NordPass.app..."
if [ -d "/Applications/NordPass.app" ]; then
    rm -rf "/Applications/NordPass.app" 2>/dev/null || true
elif [ -f "/Applications/NordPass.app" ]; then
    rm -f "/Applications/NordPass.app" 2>/dev/null || true
fi

# Remove /Library/Application Support/NordPass
echo "Removing /Library/Application Support/NordPass..."
if [ -d "/Library/Application Support/NordPass" ]; then
    rm -rf "/Library/Application Support/NordPass" 2>/dev/null || true
elif [ -f "/Library/Application Support/NordPass" ]; then
    rm -f "/Library/Application Support/NordPass" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Scripts/com.nordsec.nordpass.safari.extension
echo "Removing $HOME/Library/Application Scripts/com.nordsec.nordpass.safari.extension..."
if [ -d "$HOME/Library/Application Scripts/com.nordsec.nordpass.safari.extension" ]; then
    rm -rf "$HOME/Library/Application Scripts/com.nordsec.nordpass.safari.extension" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Scripts/com.nordsec.nordpass.safari.extension" ]; then
    rm -f "$HOME/Library/Application Scripts/com.nordsec.nordpass.safari.extension" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/NordPass
echo "Removing $HOME/Library/Application Support/NordPass..."
if [ -d "$HOME/Library/Application Support/NordPass" ]; then
    rm -rf "$HOME/Library/Application Support/NordPass" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/NordPass" ]; then
    rm -f "$HOME/Library/Application Support/NordPass" 2>/dev/null || true
fi

# Remove $HOME/Library/Containers/com.nordsec.nordpass.safari.extension
echo "Removing $HOME/Library/Containers/com.nordsec.nordpass.safari.extension..."
if [ -d "$HOME/Library/Containers/com.nordsec.nordpass.safari.extension" ]; then
    rm -rf "$HOME/Library/Containers/com.nordsec.nordpass.safari.extension" 2>/dev/null || true
elif [ -f "$HOME/Library/Containers/com.nordsec.nordpass.safari.extension" ]; then
    rm -f "$HOME/Library/Containers/com.nordsec.nordpass.safari.extension" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.nordsec.nordpass.plist
echo "Removing $HOME/Library/Preferences/com.nordsec.nordpass.plist..."
if [ -d "$HOME/Library/Preferences/com.nordsec.nordpass.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.nordsec.nordpass.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.nordsec.nordpass.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.nordsec.nordpass.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Saved Application State/com.nordsec.nordpass.savedState
echo "Removing $HOME/Library/Saved Application State/com.nordsec.nordpass.savedState..."
if [ -d "$HOME/Library/Saved Application State/com.nordsec.nordpass.savedState" ]; then
    rm -rf "$HOME/Library/Saved Application State/com.nordsec.nordpass.savedState" 2>/dev/null || true
elif [ -f "$HOME/Library/Saved Application State/com.nordsec.nordpass.savedState" ]; then
    rm -f "$HOME/Library/Saved Application State/com.nordsec.nordpass.savedState" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

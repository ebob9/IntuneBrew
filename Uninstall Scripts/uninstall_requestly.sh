#!/bin/bash
# Uninstall script for Requestly
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Requestly..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Requestly if running..."
pkill -f "Requestly" 2>/dev/null || true

# Remove /Applications/Requestly.app
echo "Removing /Applications/Requestly.app..."
if [ -d "/Applications/Requestly.app" ]; then
    rm -rf "/Applications/Requestly.app" 2>/dev/null || true
elif [ -f "/Applications/Requestly.app" ]; then
    rm -f "/Applications/Requestly.app" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*
echo "Removing $HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*..."
if [ -d "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*" ]; then
    rm -rf "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*" ]; then
    rm -f "$HOME/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.requestly*.sfl*" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/Requestly
echo "Removing $HOME/Library/Application Support/Requestly..."
if [ -d "$HOME/Library/Application Support/Requestly" ]; then
    rm -rf "$HOME/Library/Application Support/Requestly" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/Requestly" ]; then
    rm -f "$HOME/Library/Application Support/Requestly" 2>/dev/null || true
fi

# Remove $HOME/Library/Logs/Requestly
echo "Removing $HOME/Library/Logs/Requestly..."
if [ -d "$HOME/Library/Logs/Requestly" ]; then
    rm -rf "$HOME/Library/Logs/Requestly" 2>/dev/null || true
elif [ -f "$HOME/Library/Logs/Requestly" ]; then
    rm -f "$HOME/Library/Logs/Requestly" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/io.requestly.*.plist
echo "Removing $HOME/Library/Preferences/io.requestly.*.plist..."
if [ -d "$HOME/Library/Preferences/io.requestly.*.plist" ]; then
    rm -rf "$HOME/Library/Preferences/io.requestly.*.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/io.requestly.*.plist" ]; then
    rm -f "$HOME/Library/Preferences/io.requestly.*.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Saved Application State/io.requestly.*.savedState
echo "Removing $HOME/Library/Saved Application State/io.requestly.*.savedState..."
if [ -d "$HOME/Library/Saved Application State/io.requestly.*.savedState" ]; then
    rm -rf "$HOME/Library/Saved Application State/io.requestly.*.savedState" 2>/dev/null || true
elif [ -f "$HOME/Library/Saved Application State/io.requestly.*.savedState" ]; then
    rm -f "$HOME/Library/Saved Application State/io.requestly.*.savedState" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

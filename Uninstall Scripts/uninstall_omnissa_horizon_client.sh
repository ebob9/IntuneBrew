#!/bin/bash
# Uninstall script for Omnissa Horizon Client
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Omnissa Horizon Client..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Omnissa Horizon Client if running..."
pkill -f "Omnissa Horizon Client" 2>/dev/null || true

# Unload service com.omnissa.horizon.CDSHelper
echo "Unloading service com.omnissa.horizon.CDSHelper..."
launchctl unload -w /Library/LaunchAgents/com.omnissa.horizon.CDSHelper.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.omnissa.horizon.CDSHelper.plist 2>/dev/null || true

# Unload service com.ws1.deem.MacUIEvents
echo "Unloading service com.ws1.deem.MacUIEvents..."
launchctl unload -w /Library/LaunchAgents/com.ws1.deem.MacUIEvents.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.ws1.deem.MacUIEvents.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.ws1.deem.MacUIEvents.plist 2>/dev/null || true

# Unload service com.ws1.deemd
echo "Unloading service com.ws1.deemd..."
launchctl unload -w /Library/LaunchAgents/com.ws1.deemd.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.ws1.deemd.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.ws1.deemd.plist 2>/dev/null || true

# Unload service com.ws1.ws1etlm
echo "Unloading service com.ws1.ws1etlm..."
launchctl unload -w /Library/LaunchAgents/com.ws1.ws1etlm.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.ws1.ws1etlm.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.ws1.ws1etlm.plist 2>/dev/null || true

# Unload service com.ws1.ws1etlmu
echo "Unloading service com.ws1.ws1etlmu..."
launchctl unload -w /Library/LaunchAgents/com.ws1.ws1etlmu.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.ws1.ws1etlmu.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.ws1.ws1etlmu.plist 2>/dev/null || true

# Kill application with bundle ID com.omnissa.horizonapp if running
echo "Stopping application with bundle ID com.omnissa.horizonapp if running..."
killall -9 "com.omnissa.horizonapp" 2>/dev/null || true

# Remove /Library/Application Support/Omnissa
echo "Removing /Library/Application Support/Omnissa..."
if [ -d "/Library/Application Support/Omnissa" ]; then
    rm -rf "/Library/Application Support/Omnissa" 2>/dev/null || true
elif [ -f "/Library/Application Support/Omnissa" ]; then
    rm -f "/Library/Application Support/Omnissa" 2>/dev/null || true
fi

# Remove /Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist
echo "Removing /Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist..."
if [ -d "/Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist" ]; then
    rm -rf "/Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist" 2>/dev/null || true
elif [ -f "/Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist" ]; then
    rm -f "/Library/LaunchDaemons/com.omnissa.horizon.CDSHelper.plist" 2>/dev/null || true
fi

# Remove /Library/Preferences/com.omnissa.horizon.client.mac.plist
echo "Removing /Library/Preferences/com.omnissa.horizon.client.mac.plist..."
if [ -d "/Library/Preferences/com.omnissa.horizon.client.mac.plist" ]; then
    rm -rf "/Library/Preferences/com.omnissa.horizon.client.mac.plist" 2>/dev/null || true
elif [ -f "/Library/Preferences/com.omnissa.horizon.client.mac.plist" ]; then
    rm -f "/Library/Preferences/com.omnissa.horizon.client.mac.plist" 2>/dev/null || true
fi

# Remove /Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper
echo "Removing /Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper..."
if [ -d "/Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper" ]; then
    rm -rf "/Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper" 2>/dev/null || true
elif [ -f "/Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper" ]; then
    rm -f "/Library/PrivilegedHelperTools/com.omnissa.horizon.CDSHelper" 2>/dev/null || true
fi

# Remove $HOME/.omnissa
echo "Removing $HOME/.omnissa..."
if [ -d "$HOME/.omnissa" ]; then
    rm -rf "$HOME/.omnissa" 2>/dev/null || true
elif [ -f "$HOME/.omnissa" ]; then
    rm -f "$HOME/.omnissa" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/Omnissa Horizon Client
echo "Removing $HOME/Library/Application Support/Omnissa Horizon Client..."
if [ -d "$HOME/Library/Application Support/Omnissa Horizon Client" ]; then
    rm -rf "$HOME/Library/Application Support/Omnissa Horizon Client" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/Omnissa Horizon Client" ]; then
    rm -f "$HOME/Library/Application Support/Omnissa Horizon Client" 2>/dev/null || true
fi

# Remove $HOME/Library/Caches/com.omnissa.horizon.client.mac
echo "Removing $HOME/Library/Caches/com.omnissa.horizon.client.mac..."
if [ -d "$HOME/Library/Caches/com.omnissa.horizon.client.mac" ]; then
    rm -rf "$HOME/Library/Caches/com.omnissa.horizon.client.mac" 2>/dev/null || true
elif [ -f "$HOME/Library/Caches/com.omnissa.horizon.client.mac" ]; then
    rm -f "$HOME/Library/Caches/com.omnissa.horizon.client.mac" 2>/dev/null || true
fi

# Remove $HOME/Library/Logs/Omnissa Horizon Client
echo "Removing $HOME/Library/Logs/Omnissa Horizon Client..."
if [ -d "$HOME/Library/Logs/Omnissa Horizon Client" ]; then
    rm -rf "$HOME/Library/Logs/Omnissa Horizon Client" 2>/dev/null || true
elif [ -f "$HOME/Library/Logs/Omnissa Horizon Client" ]; then
    rm -f "$HOME/Library/Logs/Omnissa Horizon Client" 2>/dev/null || true
fi

# Remove $HOME/Library/Logs/Omnissa
echo "Removing $HOME/Library/Logs/Omnissa..."
if [ -d "$HOME/Library/Logs/Omnissa" ]; then
    rm -rf "$HOME/Library/Logs/Omnissa" 2>/dev/null || true
elif [ -f "$HOME/Library/Logs/Omnissa" ]; then
    rm -f "$HOME/Library/Logs/Omnissa" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.omnissa.horizon.client.mac.plist
echo "Removing $HOME/Library/Preferences/com.omnissa.horizon.client.mac.plist..."
if [ -d "$HOME/Library/Preferences/com.omnissa.horizon.client.mac.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.omnissa.horizon.client.mac.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.omnissa.horizon.client.mac.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.omnissa.horizon.client.mac.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.omnissa.horizon.keyboard.plist
echo "Removing $HOME/Library/Preferences/com.omnissa.horizon.keyboard.plist..."
if [ -d "$HOME/Library/Preferences/com.omnissa.horizon.keyboard.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.omnissa.horizon.keyboard.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.omnissa.horizon.keyboard.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.omnissa.horizon.keyboard.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState
echo "Removing $HOME/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState..."
if [ -d "$HOME/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState" ]; then
    rm -rf "$HOME/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState" 2>/dev/null || true
elif [ -f "$HOME/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState" ]; then
    rm -f "$HOME/Library/Saved Application State/com.omnissa.horizon.client.mac.savedState" 2>/dev/null || true
fi

# Remove $HOME/Library/WebKit/com.omnissa.horizon.client.mac
echo "Removing $HOME/Library/WebKit/com.omnissa.horizon.client.mac..."
if [ -d "$HOME/Library/WebKit/com.omnissa.horizon.client.mac" ]; then
    rm -rf "$HOME/Library/WebKit/com.omnissa.horizon.client.mac" 2>/dev/null || true
elif [ -f "$HOME/Library/WebKit/com.omnissa.horizon.client.mac" ]; then
    rm -f "$HOME/Library/WebKit/com.omnissa.horizon.client.mac" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

#!/bin/bash
# Uninstall script for Podman Desktop
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Podman Desktop..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Podman Desktop if running..."
pkill -f "Podman Desktop" 2>/dev/null || true

# Kill application with bundle ID io.podmandesktop.PodmanDesktop if running
echo "Stopping application with bundle ID io.podmandesktop.PodmanDesktop if running..."
killall -9 "io.podmandesktop.PodmanDesktop" 2>/dev/null || true

# Remove /Applications/Podman Desktop.app
echo "Removing /Applications/Podman Desktop.app..."
if [ -d "/Applications/Podman Desktop.app" ]; then
    rm -rf "/Applications/Podman Desktop.app" 2>/dev/null || true
elif [ -f "/Applications/Podman Desktop.app" ]; then
    rm -f "/Applications/Podman Desktop.app" 2>/dev/null || true
fi

# Remove $HOME/.local/share/containers/podman-desktop
echo "Removing $HOME/.local/share/containers/podman-desktop..."
if [ -d "$HOME/.local/share/containers/podman-desktop" ]; then
    rm -rf "$HOME/.local/share/containers/podman-desktop" 2>/dev/null || true
elif [ -f "$HOME/.local/share/containers/podman-desktop" ]; then
    rm -f "$HOME/.local/share/containers/podman-desktop" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/Podman Desktop
echo "Removing $HOME/Library/Application Support/Podman Desktop..."
if [ -d "$HOME/Library/Application Support/Podman Desktop" ]; then
    rm -rf "$HOME/Library/Application Support/Podman Desktop" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/Podman Desktop" ]; then
    rm -f "$HOME/Library/Application Support/Podman Desktop" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/io.podmandesktop.PodmanDesktop.plist
echo "Removing $HOME/Library/Preferences/io.podmandesktop.PodmanDesktop.plist..."
if [ -d "$HOME/Library/Preferences/io.podmandesktop.PodmanDesktop.plist" ]; then
    rm -rf "$HOME/Library/Preferences/io.podmandesktop.PodmanDesktop.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/io.podmandesktop.PodmanDesktop.plist" ]; then
    rm -f "$HOME/Library/Preferences/io.podmandesktop.PodmanDesktop.plist" 2>/dev/null || true
fi

# Remove $HOME/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState
echo "Removing $HOME/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState..."
if [ -d "$HOME/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState" ]; then
    rm -rf "$HOME/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState" 2>/dev/null || true
elif [ -f "$HOME/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState" ]; then
    rm -f "$HOME/Library/Saved Application State/io.podmandesktop.PodmanDesktop.savedState" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

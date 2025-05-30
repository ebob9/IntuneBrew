#!/bin/bash
# Uninstall script for Karabiner Elements
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Karabiner Elements..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Karabiner Elements if running..."
pkill -f "Karabiner Elements" 2>/dev/null || true

# Unload service org.pqrs.karabiner.agent.karabiner_grabber
echo "Unloading service org.pqrs.karabiner.agent.karabiner_grabber..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.agent.karabiner_grabber.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.agent.karabiner_grabber.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.agent.karabiner_grabber.plist 2>/dev/null || true

# Unload service org.pqrs.karabiner.agent.karabiner_observer
echo "Unloading service org.pqrs.karabiner.agent.karabiner_observer..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.agent.karabiner_observer.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.agent.karabiner_observer.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.agent.karabiner_observer.plist 2>/dev/null || true

# Unload service org.pqrs.karabiner.karabiner_console_user_server
echo "Unloading service org.pqrs.karabiner.karabiner_console_user_server..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.karabiner_console_user_server.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.karabiner_console_user_server.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.karabiner_console_user_server.plist 2>/dev/null || true

# Unload service org.pqrs.karabiner.karabiner_grabber
echo "Unloading service org.pqrs.karabiner.karabiner_grabber..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.karabiner_grabber.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.karabiner_grabber.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.karabiner_grabber.plist 2>/dev/null || true

# Unload service org.pqrs.karabiner.karabiner_observer
echo "Unloading service org.pqrs.karabiner.karabiner_observer..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.karabiner_observer.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.karabiner_observer.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.karabiner_observer.plist 2>/dev/null || true

# Unload service org.pqrs.karabiner.karabiner_session_monitor
echo "Unloading service org.pqrs.karabiner.karabiner_session_monitor..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.karabiner_session_monitor.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.karabiner_session_monitor.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.karabiner_session_monitor.plist 2>/dev/null || true

# Unload service org.pqrs.karabiner.NotificationWindow
echo "Unloading service org.pqrs.karabiner.NotificationWindow..."
launchctl unload -w /Library/LaunchAgents/org.pqrs.karabiner.NotificationWindow.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/org.pqrs.karabiner.NotificationWindow.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/org.pqrs.karabiner.NotificationWindow.plist 2>/dev/null || true

# Remove /usr/local/bin//Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli
echo "Removing /usr/local/bin//Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli..."
if [ -d "/usr/local/bin//Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli" ]; then
    rm -rf "/usr/local/bin//Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli" 2>/dev/null || true
elif [ -f "/usr/local/bin//Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli" ]; then
    rm -f "/usr/local/bin//Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli" 2>/dev/null || true
fi

# Remove $HOME/.config/karabiner
echo "Removing $HOME/.config/karabiner..."
if [ -d "$HOME/.config/karabiner" ]; then
    rm -rf "$HOME/.config/karabiner" 2>/dev/null || true
elif [ -f "$HOME/.config/karabiner" ]; then
    rm -f "$HOME/.config/karabiner" 2>/dev/null || true
fi

# Remove $HOME/.local/share/karabiner
echo "Removing $HOME/.local/share/karabiner..."
if [ -d "$HOME/.local/share/karabiner" ]; then
    rm -rf "$HOME/.local/share/karabiner" 2>/dev/null || true
elif [ -f "$HOME/.local/share/karabiner" ]; then
    rm -f "$HOME/.local/share/karabiner" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager
echo "Removing $HOME/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager..."
if [ -d "$HOME/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager" ]; then
    rm -rf "$HOME/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager" ]; then
    rm -f "$HOME/Library/Application Scripts/org.pqrs.Karabiner-VirtualHIDDevice-Manager" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/Karabiner-Elements
echo "Removing $HOME/Library/Application Support/Karabiner-Elements..."
if [ -d "$HOME/Library/Application Support/Karabiner-Elements" ]; then
    rm -rf "$HOME/Library/Application Support/Karabiner-Elements" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/Karabiner-Elements" ]; then
    rm -f "$HOME/Library/Application Support/Karabiner-Elements" 2>/dev/null || true
fi

# Remove $HOME/Library/Caches/org.pqrs.Karabiner-Elements.Updater
echo "Removing $HOME/Library/Caches/org.pqrs.Karabiner-Elements.Updater..."
if [ -d "$HOME/Library/Caches/org.pqrs.Karabiner-Elements.Updater" ]; then
    rm -rf "$HOME/Library/Caches/org.pqrs.Karabiner-Elements.Updater" 2>/dev/null || true
elif [ -f "$HOME/Library/Caches/org.pqrs.Karabiner-Elements.Updater" ]; then
    rm -f "$HOME/Library/Caches/org.pqrs.Karabiner-Elements.Updater" 2>/dev/null || true
fi

# Remove $HOME/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager
echo "Removing $HOME/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager..."
if [ -d "$HOME/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager" ]; then
    rm -rf "$HOME/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager" 2>/dev/null || true
elif [ -f "$HOME/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager" ]; then
    rm -f "$HOME/Library/Containers/org.pqrs.Karabiner-VirtualHIDDevice-Manager" 2>/dev/null || true
fi

# Remove $HOME/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings
echo "Removing $HOME/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings..."
if [ -d "$HOME/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings" ]; then
    rm -rf "$HOME/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings" 2>/dev/null || true
elif [ -f "$HOME/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings" ]; then
    rm -f "$HOME/Library/HTTPStorages/org.pqrs.Karabiner-Elements.Settings" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist
echo "Removing $HOME/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist..."
if [ -d "$HOME/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist" ]; then
    rm -rf "$HOME/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist" ]; then
    rm -f "$HOME/Library/Preferences/org.pqrs.Karabiner-Elements.Updater.plist" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0

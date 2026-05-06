#!/usr/bin/env bash
# Wipe the dock and rebuild it with my apps in order.
# Requires: dockutil (brew install dockutil)
set -euo pipefail

dockutil --no-restart --remove all

apps=(
  "/System/Applications/System Settings.app"
  "/Applications/Slack.app"
  "/Applications/Google Chrome.app"
  "/Applications/Microsoft Teams.app"
  "/Applications/zoom.us.app"
  "/Applications/iTerm.app"
  "/Applications/Visual Studio Code.app"
)

for app in "${apps[@]}"; do
  if [ -e "$app" ]; then
    dockutil --no-restart --add "$app"
  else
    echo "skipping (not installed): $app"
  fi
done

dockutil --no-restart --add "$HOME/Downloads" --view grid --display folder

killall Dock

#!/usr/bin/env bash

# Define the base directory for packages and source the library script
BASEDIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
source "$BASEDIR/lib/bootstrap.sh"

APPDIR=$(basename "$BASEDIR")
echo "$APPDIR Env Setup/Teardown"

# Read packages and casks from files
PACKAGES=($(cat "$BASEDIR/packages/brew.txt"))
CASKS=($(cat "$BASEDIR/packages/casks.txt"))

# Main menu using gum
ACTION=$(gum choose "Setup" "Teardown")
echo "Selected action: $ACTION"
case "$ACTION" in
    Setup)
        install_apps
        ;;
    Teardown)
        uninstall_apps
        ;;
    *)
        pretty_print "Invalid option, exiting..."
        exit 1
        ;;
esac

#!/bin/bash
# fcr Install Script
# This script installs fcr by downloading the latest version from GitHub,
# making it executable, and placing it in /usr/local/bin.

set -e  # Exit on any error

# Define the GitHub repository and script name
REPO="https://github.com/gourdian25/fcr"
SCRIPT_NAME="fcr"
INSTALL_DIR="/usr/local/bin"

# Download the script
echo -e "\033[1;32mDownloading fcr...\033[0m"
curl -fsSL "${REPO}/raw/master/fcr" -o "/tmp/${SCRIPT_NAME}"

# Make the script executable
echo -e "\033[1;32mMaking fcr executable...\033[0m"
chmod +x "/tmp/${SCRIPT_NAME}"

# Move the script to /usr/local/bin
echo -e "\033[1;32mInstalling fcr to ${INSTALL_DIR}...\033[0m"
sudo mv "/tmp/${SCRIPT_NAME}" "${INSTALL_DIR}/${SCRIPT_NAME}"

# Verify installation
if command -v "${SCRIPT_NAME}" &> /dev/null; then
    echo -e "\033[1;32mfcr installed successfully!\033[0m"
    echo -e "Run 'fcr' to start using the tool."
else
    echo -e "\033[1;31mInstallation failed. Please check your permissions and try again.\033[0m"
    exit 1
fi
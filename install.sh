#!/bin/bash
# Copied from: https://github.com/iiab/iiab-factory/blob/master/install.txt



set -e                                   # Exit on error (avoids snowballing)
export DEBIAN_FRONTEND=noninteractive    # Bypass (most!) interactive questions

# Save script to /usr/sbin/iiab (easy resume/continue mnemonic 'sudo iiab')
sudo mv /usr/sbin/iiab /usr/sbin/iiab.old 2> /dev/null || true    # Overrides 'set -e'
curl https://raw.githubusercontent.com/iiab/iiab-factory/master/iiab | sudo tee /usr/sbin/iiab > /dev/null
sudo chmod 0755 /usr/sbin/iiab

# Run install script!
sudo /usr/sbin/iiab "$@"    # Pass on all CLI params (PR #s) for easy
# community testing -- SEE "Install optional PR's" in /usr/sbin/iiab
# EXAMPLE: curl iiab.io/install.txt | bash -s 361 2604 2607

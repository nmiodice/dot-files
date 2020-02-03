#!/bin/bash

##
# Install & Configuration script for new ubuntu-18.04 Install
#
# Note: run as sudo!
##

set -euo pipefail

./ubuntu-18.04-init.sh
./ubuntu-18.04-profile.sh
./ubuntu-18.04-docker.sh
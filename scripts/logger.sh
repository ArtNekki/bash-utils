#!/bin/bash

# Copyright (c) 2024 Anton Maiatskii
# This script is part of bash-utils (https://github.com/ArtNekki/bash-utils)
# Version: 1.0.0
# Licensed under the MIT License. See the LICENSE file in the root directory
# of this project for full license details.

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging function with color support and icons
log() {
  local log_type="$1"
  local message="$2"
  local color
  local icon

  case "$log_type" in
  "INFO")
    color="$BLUE"
    icon="ℹ️"
    ;;
  "SUCCESS")
    color="$GREEN"
    icon="✅"
    ;;
  "WARNING")
    color="$YELLOW"
    icon="⚠️"
    ;;
  "ERROR")
    color="$RED"
    icon="❌"
    ;;
  *)
    color="$NC"
    icon="➡️"
    ;;
  esac

  echo -e "${color}${icon} [$(date +'%Y-%m-%d %H:%M:%S')] [${log_type}] ${message}${NC}" | tee -a deploy.log
}

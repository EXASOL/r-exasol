#!/bin/bash

set -euo pipefail

if [ $# -lt 1 ]; then
    echo "You must provide r-version as argument"
    exit 1
fi

R_VERSION="$1"

IMAGE_NAME="$("$SCRIPT_DIR/construct_docker_runner_image_name.sh" "${R_VERSION}")"

docker pull $IMAGE_NAME || true
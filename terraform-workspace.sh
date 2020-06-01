#!/bin/bash
set -e

WORKSPACE_NAME=$1

function print_usage {
  echo Usage: ./terraform-workspace.sh [workspace]
}

if [ -z "$WORKSPACE_NAME" ]; then
    print_usage
    exit 1
fi

echo "Changing to terraform directory..."
cd terraform

echo "Selecting workspace '$WORKSPACE_NAME'... (creating if new)"
if ! terraform workspace new $WORKSPACE_NAME; then
  terraform workspace select $WORKSPACE_NAME
fi

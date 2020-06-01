#!/bin/bash
set -e

echo "Changing to terraform directory..."
cd terraform

echo "Performing plan..."
terraform plan

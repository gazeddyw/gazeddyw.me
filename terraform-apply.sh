#!/bin/bash
set -e

echo "Changing to terraform directory..."
cd terraform

echo "Performing apply..."
terraform apply 

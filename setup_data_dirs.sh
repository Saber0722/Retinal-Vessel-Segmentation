#!/bin/bash

echo "Creating dataset directory structure..."

# Base data directory
mkdir -p data

# Merged dataset
mkdir -p data/merged/images
mkdir -p data/merged/masks

# Patches dataset
mkdir -p data/patches/images
mkdir -p data/patches/masks

# Raw datasets
mkdir -p data/raw/chase_db1
mkdir -p data/raw/drive
mkdir -p data/raw/hrf

echo "Directory structure created successfully!"

# Show result
tree -L 2 data

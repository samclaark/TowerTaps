#!/bin/bash

echo "Cleaning temporary and cache files..."

# Remove system/editor-generated files
find . -type f -name "*~" -delete
find . -type f -name "*.swp" -delete
find . -type f -name "*.tmp" -delete
find . -type f -name "*.log" -delete

# Remove node_modules (if applicable)
rm -rf node_modules/

# Remove Python __pycache__ folders
find . -type d -name "__pycache__" -exec rm -rf {} +

# Remove .DS_Store (macOS) or Thumbs.db (Windows)
find . -type f \( -name ".DS_Store" -o -name "Thumbs.db" \) -delete

echo "Cleanup complete."


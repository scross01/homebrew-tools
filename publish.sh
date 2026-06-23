#!/bin/bash
# Script to publish the homebrew tap to GitHub

set -e

echo "Publishing Homebrew tap to GitHub..."

# Check if we're in the right directory
if [ ! -f "Formula/searxngr.rb" ]; then
    echo "Error: Please run this script from the homebrew-tools directory"
    exit 1
fi

# Initialize git repo if not already initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit: Homebrew tap for CLI utilities"
fi

# Create GitHub repo and push
echo "Creating GitHub repository..."
echo ""
echo "Please create a new repository on GitHub named 'homebrew-tools'"
echo "Then run the following commands:"
echo ""
echo "  git remote add origin git@github.com:scross01/homebrew-tools.git"
echo "  git branch -M main"
echo "  git push -u origin main"
echo ""
echo "After pushing, users can tap with:"
echo "  brew tap scross01/tools https://github.com/scross01/homebrew-tools.git"
echo ""
echo "Or if the repo is public:"
echo "  brew tap scross01/tools"

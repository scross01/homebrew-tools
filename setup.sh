#!/bin/bash
# Setup script for the homebrew tap

set -e

echo "Setting up Homebrew tap for CLI utilities..."

# Create the tap directory if it doesn't exist
TAP_DIR="$HOME/.homebrew/Library/Taps/scross01/homebrew-tools"
mkdir -p "$TAP_DIR"

# Copy formulas
cp -r Formula/* "$TAP_DIR/"

echo "Tap setup complete!"
echo ""
echo "To use the tap:"
echo "  brew tap scross01/tools"
echo ""
echo "To install tools:"
echo "  brew install searxngr fetch keeenv tabletop"
echo ""
echo "Or install individually:"
echo "  brew install searxngr"
echo "  brew install fetch"
echo "  brew install keeenv"
echo "  brew install tabletop"

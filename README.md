# Homebrew Tap

A custom Homebrew tap for my CLI utilities.

## Installation

### Option 1: Direct from GitHub (Recommended)

```bash
brew tap scross01/tools https://github.com/scross01/homebrew-tools.git
```

### Option 2: Clone and Install Locally

```bash
git clone https://github.com/scross01/homebrew-tools.git
cd homebrew-tools
./setup.sh
```

## Available Formulas

| Formula | Version | Description | Python Version |
|---------|---------|-------------|----------------|
| `searxngr` | 0.8.1 | Web search via SearXNG with JSON output | 3.12+ |
| `fetch` | 0.2.0 | Lightweight web fetch CLI for clean, structured content | 3.12+ |
| `keeenv` | 0.5.1 | Securely populate environment variables from KeePass database | 3.12+ |
| `tabletop` | 0.1.0 | Parse and transform space-aligned CLI tables | 3.12+ |

## Usage

After tapping:

```bash
# Install individual tools
brew install searxngr
brew install fetch
brew install keeenv
brew install tabletop

# Or install all at once
brew install searxngr fetch keeenv tabletop
```

## Updating

```bash
brew update
brew upgrade searxngr fetch keeenv tabletop
```

## Development

To test formulas locally:

```bash
# Test a single formula
brew install --build-from-source ./Formula/searxngr.rb

# Run tests
brew test searxngr
brew test fetch
brew test keeenv
brew test tabletop
```

## Uninstalling

```bash
brew uninstall searxngr fetch keeenv tabletop
brew untap scross01/tools
```

## License

MIT

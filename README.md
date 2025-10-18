# Homebrew Tap for MCP Kubernetes Server

This is a Homebrew tap for the Model Context Protocol (MCP) Kubernetes Server.

## Installation

```bash
# Add the tap
brew tap gautampachnanda101/mcp

# Install mcp-k8s
brew install mcp-k8s

# Verify installation
mcp-k8s --version
```

## Usage

```bash
# Show help
mcp-k8s --help

# Test Kubernetes connection
mcp-k8s --test

# List available tools
mcp-k8s --list-tools
```

## Requirements

- Kubernetes cluster access
- kubectl configured (optional but recommended)

## Documentation

For more information, see the [main repository](https://github.com/gautampachnanda101/mcp-servers).

## License

MIT

# Homebrew Tap for MCP Kubernetes Server

[![GitHub Release](https://img.shields.io/github/v/release/gautampachnanda101/mcp-servers)](https://github.com/gautampachnanda101/mcp-servers/releases)
[![Homebrew](https://img.shields.io/badge/Homebrew-tap-orange)](https://github.com/gautampachnanda101/homebrew-mcp)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

This is a Homebrew tap for the Model Context Protocol (MCP) Kubernetes Server. It provides easy installation and updates for `mcp-k8s` on macOS and Linux.

## Quick Start

```bash
# Add the tap
brew tap gautampachnanda101/mcp

# Install mcp-k8s
brew install mcp-k8s

# Verify installation
mcp-k8s --version
```

## Supported Platforms

| OS    | Architecture          | Status |
| ----- | --------------------- | ------ |
| macOS | Intel (x86_64)        | ✅     |
| macOS | Apple Silicon (ARM64) | ✅     |
| Linux | x86_64                | ✅     |
| Linux | ARM64                 | ✅     |

## Installation Options

### Standard Installation

```bash
# Tap and install in one command
brew install gautampachnanda101/mcp/mcp-k8s
```

### With Specific Version

```bash
# Install specific version
brew install gautampachnanda101/mcp/mcp-k8s@0.1.1
```

## Usage

### Basic Commands

```bash
# Show help
mcp-k8s --help

# Test Kubernetes connection
mcp-k8s --test

# List available MCP tools
mcp-k8s --list-tools
```

### Testing the Installation

```bash
# Quick connection test
mcp-k8s --test

# Expected output:
# ✅ Successfully connected to Kubernetes cluster
# Cluster: https://your-cluster-api
# Context: your-context
```

### MCP Client Integration

**Claude Desktop:**

```json
{
  "mcpServers": {
    "k8s": {
      "command": "mcp-k8s",
      "args": ["--log-level", "info"]
    }
  }
}
```

**VS Code MCP Extension:**

```json
{
  "mcpServers": {
    "k8s": {
      "command": "mcp-k8s",
      "args": ["--kubeconfig", "/path/to/kubeconfig"]
    }
  }
}
```

## Updating

```bash
# Update Homebrew
brew update

# Upgrade mcp-k8s
brew upgrade mcp-k8s

# Check current version
mcp-k8s --version
```

## Uninstallation

```bash
# Uninstall mcp-k8s
brew uninstall mcp-k8s

# Optionally remove the tap
brew untap gautampachnanda101/mcp
```

## Requirements

- Kubernetes cluster access
- Valid kubeconfig file (`~/.kube/config` or custom path)
- kubectl configured (optional but recommended)

## How It Works

- **Binaries:** Downloaded from [public releases](https://github.com/gautampachnanda101/mcp-servers/releases)
- **Formula:** Automatically selects the correct binary for your platform
- **Updates:** Managed through Homebrew's standard update mechanism
- **SHA256:** All binaries are verified with SHA256 checksums

## Troubleshooting

### Formula Not Found

```bash
# Update Homebrew
brew update

# Tap the repository again
brew untap gautampachnanda101/mcp
brew tap gautampachnanda101/mcp
```

### Version Conflicts

```bash
# Reinstall from scratch
brew uninstall mcp-k8s
brew install mcp-k8s
```

### Permission Issues

```bash
# Ensure binary is executable
which mcp-k8s
ls -l $(which mcp-k8s)

# Should show executable permissions
```

## Documentation

- **📖 Main Repository:** [gautampachnanda101/mcp-servers](https://github.com/gautampachnanda101/mcp-servers)
- **📦 Releases:** [GitHub Releases](https://github.com/gautampachnanda101/mcp-servers/releases)
- **📚 Full Documentation:** [docs/](https://github.com/gautampachnanda101/mcp-servers/tree/main/docs)
- **🐛 Issues:** [Report a bug](https://github.com/gautampachnanda101/mcp-servers/issues)

## Other Installation Methods

If Homebrew isn't available on your system:

- **Direct Download:** [GitHub Releases](https://github.com/gautampachnanda101/mcp-servers/releases)
- **Install Script:** `curl -sSL https://github.com/gautampachnanda101/mcp-servers/releases/latest/download/install.sh | bash`
- **Windows:** Use PowerShell install script or manual download

See the [Distribution Guide](https://github.com/gautampachnanda101/mcp-servers/blob/main/docs/distribution.md) for all installation options.

## Contributing

Found an issue with the formula? Please open an issue or PR:

- **Formula Issues:** [homebrew-mcp issues](https://github.com/gautampachnanda101/homebrew-mcp/issues)
- **Binary Issues:** [mcp-servers issues](https://github.com/gautampachnanda101/mcp-servers/issues)

## License

MIT

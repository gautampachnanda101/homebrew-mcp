class McpK8s < Formula
  desc "Model Context Protocol (MCP) server for Kubernetes operations"
  homepage "https://github.com/gautampachnanda101/mcp-servers"
  version "#{ENV['VERSION'] || '0.0.3'}"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gautampachnanda101/mcp-servers/releases/download/v#{version}/mcp-k8s-darwin-amd64.tar.gz"
      sha256 "#{ENV['SHA256_DARWIN_AMD64'] || 'placeholder'}"
    elsif Hardware::CPU.arm?
      url "https://github.com/gautampachnanda101/mcp-servers/releases/download/v#{version}/mcp-k8s-darwin-arm64.tar.gz"
      sha256 "#{ENV['SHA256_DARWIN_ARM64'] || 'placeholder'}"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gautampachnanda101/mcp-servers/releases/download/v#{version}/mcp-k8s-linux-amd64.tar.gz"
      sha256 "#{ENV['SHA256_LINUX_AMD64'] || 'placeholder'}"
    elsif Hardware::CPU.arm?
      url "https://github.com/gautampachnanda101/mcp-servers/releases/download/v#{version}/mcp-k8s-linux-arm64.tar.gz"
      sha256 "#{ENV['SHA256_LINUX_ARM64'] || 'placeholder'}"
    end
  end

  depends_on "kubectl" => :optional

  def install
    bin.install "mcp-k8s"

    # Install documentation
    doc.install Dir["docs/*"] if Dir.exist?("docs")
    doc.install "README.md" if File.exist?("README.md")

    # Install example configurations
    if Dir.exist?("examples")
      (share/"mcp-k8s").install Dir["examples/*"]
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-k8s --version")

    # Test basic functionality
    output = shell_output("#{bin}/mcp-k8s --help")
    assert_match "Model Context Protocol server for Kubernetes", output
  end

  def caveats
    <<~EOS
      MCP K8s server has been installed!

      To configure with your MCP client:
      1. Add the server to your MCP configuration
      2. Ensure kubectl is configured for your cluster
      3. Run: mcp-k8s --help for available commands

      Documentation: #{doc}
      Examples: #{share}/mcp-k8s

      For VS Code integration, see:
      https://github.com/gautampachnanda101/mcp-servers/blob/main/README.md
    EOS
  end
end

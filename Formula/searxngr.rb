class Searxngr < Formula
  include Language::Python::Virtualenv

  desc "Web search via SearXNG with JSON output"
  homepage "https://github.com/scross01/searxngr"
  url "https://github.com/scross01/searxngr/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "c6eaf8581fedd12f1cb917d44ed85bfe4d1ca31b9536eabcc5775f01319bb174"
  version "0.9.0"
  license "MIT"

  depends_on "python@3.12"

  def install
    # Create virtualenv with pip using system Python
    system "python3.12", "-m", "venv", "--system-site-packages", libexec.to_s
    
    # Install package with dependencies
    system "#{libexec}/bin/pip", "install", "."
    
    # Only symlink the application binary, not python/pip
    bin.install_symlink "#{libexec}/bin/searxngr"
  end

  test do
    assert_match "searxngr", shell_output("#{bin}/searxngr --help")
  end
end

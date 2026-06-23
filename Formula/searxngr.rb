class Searxngr < Formula
  include Language::Python::Virtualenv

  desc "Web search via SearXNG with JSON output"
  homepage "https://github.com/scross01/searxngr"
  url "https://github.com/scross01/searxngr/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "abe5776b89f084be3f57c5ddffbc5e0f354102dd491844231c2b2c9d01f09c71"
  version "0.8.1"
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

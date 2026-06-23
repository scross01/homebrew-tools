class Fetch < Formula
  include Language::Python::Virtualenv

  desc "Lightweight web fetch CLI for clean, structured content"
  homepage "https://github.com/scross01/fetch"
  url "https://github.com/scross01/fetch/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "fetch", shell_output("#{bin}/fetch --help")
  end
end

class Searxngr < Formula
  include Language::Python::Virtualenv

  desc "Web search via SearXNG with JSON output"
  homepage "https://github.com/scross01/searxngr"
  url "https://github.com/scross01/searxngr/archive/refs/heads/main.tar.gz"
  version "0.8.1"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "searxngr", shell_output("#{bin}/searxngr --help")
  end
end

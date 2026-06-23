class Tabletop < Formula
  include Language::Python::Virtualenv

  desc "Parse and transform space-aligned CLI tables"
  homepage "https://github.com/scross01/tabletop"
  url "https://github.com/scross01/tabletop/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "976eb9d2949c9f5d66b8b4d47d47d3e04d6182d96a24b4b16cbb036351f8f643"
  version "0.1.0"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "tabletop", shell_output("#{bin}/tabletop --help")
  end
end

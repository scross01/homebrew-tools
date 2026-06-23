class Keeenv < Formula
  include Language::Python::Virtualenv

  desc "Securely populate environment variables from KeePass database"
  homepage "https://github.com/scross01/keeenv"
  url "https://github.com/scross01/keeenv/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "keeenv", shell_output("#{bin}/keeenv --help")
  end
end

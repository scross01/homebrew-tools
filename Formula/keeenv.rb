class Keeenv < Formula
  include Language::Python::Virtualenv

  desc "Securely populate environment variables from KeePass database"
  homepage "https://github.com/scross01/keeenv"
  url "https://github.com/scross01/keeenv/archive/refs/tags/0.5.1.tar.gz"
  sha256 "4a2a229f2a3b129addd4f9ebaf09973ff08c3dc38c90234f80f51dea74817cfa"
  version "0.5.1"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "keeenv", shell_output("#{bin}/keeenv --help")
  end
end

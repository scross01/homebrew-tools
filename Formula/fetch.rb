class Fetch < Formula
  include Language::Python::Virtualenv

  desc "Lightweight web fetch CLI for clean, structured content"
  homepage "https://github.com/scross01/fetch"
  url "https://github.com/scross01/fetch/archive/a8ec706.tar.gz"
  sha256 "0aa814e540df9743da25ebdfa965ab772322d4e1dc7386c1a33f0333d8402701"
  version "0.2.0"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "fetch", shell_output("#{bin}/fetch --help")
  end
end

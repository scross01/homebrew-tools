class Tabletop < Formula
  include Language::Python::Virtualenv

  desc "Parse and transform space-aligned CLI tables"
  homepage "https://github.com/scross01/tabletop"
  url "https://github.com/scross01/tabletop/archive/refs/heads/main.tar.gz"
  version "0.2.0"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "tabletop", shell_output("#{bin}/tabletop --help")
  end
end

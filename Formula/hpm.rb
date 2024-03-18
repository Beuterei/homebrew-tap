class Hpm < Formula
  desc "A package manager build on top of hacs"
  homepage "https://github.com/Beuterei/hacs-package-manager"
  url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.0.1/hpm"
  sha256 "9abc3fc858d3fe003cf2fba320738c1d1111d6aa5b3c9407ab268f3a78cd5207"

  depends_on "bash"

  def install
    bin.install "hpm"
  end
end

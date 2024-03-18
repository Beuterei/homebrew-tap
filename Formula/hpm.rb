class Hpm < Formula
  desc "A package manager build on top of hacs"
  homepage "https://github.com/Beuterei/hacs-package-manager"
  url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.0.1/hpm"
  sha256 "e39f37c2ec559cc68448ea2044df41015f353a606ae1481e09b0502548d944f3"

  depends_on "bash"

  def install
    bin.install "hpm"
  end
end

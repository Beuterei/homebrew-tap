class Hpm < Formula
  desc "A package manager build on top of hacs"
  homepage "https://github.com/Beuterei/hacs-package-manager"
  url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.0.2/hpm-macos"
  sha256 "8a0f3aaf84d53928d1d4d26f94bb0f0e9bf41c3938fb9371eedf7dacc61accf3"

  depends_on "bash"

  def install
    bin.install "hpm-macos" => "hpm"
  end
end

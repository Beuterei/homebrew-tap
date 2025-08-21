class Hpm < Formula
  desc "A package manager build on top of hacs"
  homepage "https://github.com/Beuterei/hacs-package-manager"
  license "MIT"
  url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.2.0/hpm-linux-x64-modern"
  sha256 "22a6c5db0cbc7261b7d122c7ec32c9e5ca85f54bdddfd96596f5aae9eec8d774"

  version "0.2.0"

  on_linux do
    on_arm do
      url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.2.0/hpm-arm"
      sha256 "f0652d31037ef87f9c1f1cdf440c0f2ee4d3c6fd4ad70719c9ac9973a42b6a00"
    end
  end

  on_macos do
    url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.2.0/hpm-macos-x64"
    sha256 "3cc9ca2d41f22dbb3736e866495c7384a271d0c7ae3a64c5702f282fc7b6be5b"
    on_arm do
      url "https://github.com/Beuterei/hacs-package-manager/releases/download/0.2.0/hpm-macos-arm64"
      sha256 "da8f7e645c6624edac8248c43785149d6e47282efe80f141e3685478d2d7496d"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "hpm-macos-arm64" => "hpm"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "hpm-macos-x64" => "hpm"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "hpm-arm" => "hpm"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "hpm-linux-x64-modern" => "hpm"
    end
  end
end

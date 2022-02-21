class Wnv < Formula
  desc "Script for automatically switch node versions based on the configured engine the the package.json"
  homepage "https://github.com/beuluis/what-node-version"
  url "https://github.com/beuluis/what-node-version/archive/v0.0.1.tar.gz"
  sha256 "d25aca7703a3d0fa5088c85bdf01f3ac370244e04a39d479f435767e454fb62b"

  depends_on "bash"
  depends_on "jq"

  def install
    bin.install "wnv"
  end
end

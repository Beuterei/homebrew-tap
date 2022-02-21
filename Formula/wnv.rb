class Wnv < Formula
  desc "Script for automatically switch node versions based on the configured engine the the package.json"
  homepage "https://github.com/beuluis/what-node-version"
  url "https://github.com/beuluis/what-node-version/archive/v0.0.2.tar.gz"
  sha256 "267c0d3353bceb61f13ac3022e564098042baf12d9d392e7e66b8747c11e6e44"

  depends_on "bash"
  depends_on "jq"

  def install
    bin.install "wnv"
  end
end

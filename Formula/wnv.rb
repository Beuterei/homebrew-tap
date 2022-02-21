class Wnv < Formula
  desc "Script for automatically switch node versions based on the configured engine the the package.json"
  homepage "https://github.com/beuluis/what-node-version"
  url "https://github.com/beuluis/what-node-version/archive/v0.0.4.tar.gz"
  sha256 "9795405df1170a85875bd0c34473286f2eb322328a561a40b6240c373b43bc86"

  depends_on "bash"
  depends_on "jq"

  def install
    bin.install "wnv"
  end
end

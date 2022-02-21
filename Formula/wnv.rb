class Wnv < Formula
  desc "Script for automatically switch node versions based on the configured engine the the package.json"
  homepage "https://github.com/beuluis/what-node-version"
  url "https://github.com/beuluis/what-node-version/archive/v0.0.5.tar.gz"
  sha256 "3feb643e274035a297bc2b1111a3cc564ca030c4c7293d9391b13b570a8aecea"

  depends_on "bash"
  depends_on "jq"

  def install
    bin.install "wnv"
  end
end

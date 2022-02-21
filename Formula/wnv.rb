class Wnv < Formula
  desc "Script for automatically switch node versions based on the configured engine the the package.json"
  homepage "https://github.com/beuluis/what-node-version"
  url "https://github.com/beuluis/what-node-version/archive/v0.0.3.tar.gz"
  sha256 "5c443cd01beec2f2ceb12a57cfe3cdd807e22f580e258ab41e3ddb012a458e94"

  depends_on "bash"
  depends_on "jq"

  def install
    bin.install "wnv"
  end
end

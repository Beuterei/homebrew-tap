class Final < Formula
  desc "Script for finding the final name"
  homepage "https://github.com/beuluis/_final-REMASTERED"
  url "https://github.com/beuluis/_final-REMASTERED/archive/v0.0.2.tar.gz"
  sha256 "bc7e13d9801e4286cffe79bad9e066184b3b2d6d34407c6045bb0669c3e26a45"

  depends_on "bash"

  def install
    bin.install "_final"
  end

  test do
    run_output = shell_output("#{bin}/_final -e HelloWorld.js>&1")
    assert_match /^HelloWorld.*.js$/, run_output
  end
end

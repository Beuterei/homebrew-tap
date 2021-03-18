class Final < Formula
  desc "Script for finding the final name"
  homepage "https://github.com/beuluis/_final-REMASTERED"
  url "https://github.com/beuluis/_final-REMASTERED/archive/v0.0.1.tar.gz"
  sha256 "22e6d6c96622631752c93ec4b89e482e9786eb1dd4294fbd00680aeb2eb94e13"

  depends_on "bash" => :run

  def install
    inreplace "_final.sh" do |s|
      s.sub! "modifiers.txt", "#{share}/modifiers.txt"
      s.sub! "separators.txt", "#{share}/separators.txt"
      s.sub! "config.defaults.conf", "#{share}/config.defaults.conf"
    end
    bin.install "_final.sh" => "_final"

    share.install "modifiers.txt"
    share.install "separators.txt"
    share.install "config.defaults.conf"
  end

  test do
    run_output = shell_output("#{bin}/_final HelloWorld.js>&1")
    assert_match /^HelloWorld.*.js$/, run_output
  end
end

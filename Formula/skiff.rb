class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.4.0/skiff-darwin-arm64"
      sha256 "f1dfd493c804acf3728ada99916edb8a0383b8ed4e405612694ceccc9590f221"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.4.0/skiff-darwin-amd64"
      sha256 "e0d488e15f9753eab04dd6cc9e36062969d44d0e81c13bc16814dacea466b3a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.4.0/skiff-linux-arm64"
      sha256 "c5d212dd3e75c6c2272d79582ca8626f15c58fbec1b97b37e274b096980de856"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.4.0/skiff-linux-amd64"
      sha256 "db93c49a59389d53f6fbecab879591e098c4b9057dfa8c75e55ac54e27cff702"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

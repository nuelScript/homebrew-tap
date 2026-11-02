class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.2/skiff-darwin-arm64"
      sha256 "98c894a6fb3212a31c9b38ab91f1718162396303157fac83d95992b09391e0d9"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.2/skiff-darwin-amd64"
      sha256 "0b8f7077181dc1fd7c058f34ec6e337dd0ba1d2069ad471007aba7ec62610380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.2/skiff-linux-arm64"
      sha256 "2ed887c4487084456ea96255c92b35e22f3254af931a7a4ba9a0f8b9c25bcae3"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.2/skiff-linux-amd64"
      sha256 "60ec852d53985e7882654e601247e20744096e405ea8a4c6e13dda959ae43fd4"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

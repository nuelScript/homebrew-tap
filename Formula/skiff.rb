class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.3/skiff-darwin-arm64"
      sha256 "ca579f56fc1f93fe48e127142169ecf63a1cb9ba178d7d38cb27a8c7209dd7a5"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.3/skiff-darwin-amd64"
      sha256 "2c5a3628375912418cbca3e67596ecbd7ea88c8d7ac8dc1fa0cfaa84bcfd84c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.3/skiff-linux-arm64"
      sha256 "8099a42234872b8e6bd81e405e5fc92cc3031b5a9c95c8b9a01b55e4d635c7f3"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.3/skiff-linux-amd64"
      sha256 "87bac7fa759c671d1b9fd16b92ca27e0dd4ffa6fc89890ba89772497b45757d2"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

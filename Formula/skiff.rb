class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.3.0/skiff-darwin-arm64"
      sha256 "05d19964f1aa9bc058f72c3306d05b6f96902f4437f8170ee2efe13a84f5d8f0"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.3.0/skiff-darwin-amd64"
      sha256 "efdef105bc6a98b69b9e1e005ec506af774fa134b1f5bcb3a491700bec10dfc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.3.0/skiff-linux-arm64"
      sha256 "49fd765e2815334271ced0f73d752c64e999cfd4ef8d7a68a5c75f9c89451bb3"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.3.0/skiff-linux-amd64"
      sha256 "25206c8c378914a66a495997cb40eca84a853d03ee8a2e510049812d8d0638ea"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

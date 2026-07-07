class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-darwin-arm64"
      sha256 "e0b94ad607a2b6341c9b9d5004d2bc154cbd627b2a414de5629d84922eb3901a"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-darwin-amd64"
      sha256 "4e446b92572a58a31f8818f4fd63e0d9928c4be364d490e4210ef219793e4771"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-linux-arm64"
      sha256 "21341b5233dc6179a399e1305fecdae0c6994c9d9e7b35d018ac0cbc76d5b4b7"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-linux-amd64"
      sha256 "c5f5b05e09e37dd267f6d40829337f3ed687e3ac0d0f7bca59456fba5003f44b"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

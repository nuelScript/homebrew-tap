class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-darwin-arm64"
      sha256 "f9d01b877027185cda8774b739584c7fce163a7b7ad868842ae5cf4e99f3a2a4"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-darwin-amd64"
      sha256 "0b8f07494897921b2414673afbc099859b86f9fb071b0ac214514f4da9e7647e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-linux-arm64"
      sha256 "8a02796d8932d63d41fbbb117dda78c7e5ad15eb3096d1c3c6347932950f37ac"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.1.2/skiff-linux-amd64"
      sha256 "71eb2462c56b02d3cd5f7d393493b59fa9bbd27f37413a51faff92466454593f"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.5.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.4/skiff-darwin-arm64"
      sha256 "db38c18190fcfddf774e07013c28ee339a1e34535a466decfa2d34967e591ca0"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.4/skiff-darwin-amd64"
      sha256 "4a7414d81c8d6775fc0e1cd0c3dc66cb58f2ab5d6a3a3122deb4fe775ecff2c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.4/skiff-linux-arm64"
      sha256 "6a4cca194c195ccc939213ec69a35f2b74f3ec0c235a7a335e53d36a2108ada5"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.4/skiff-linux-amd64"
      sha256 "27a17bf2f1ae5971cb35d42b049a2be266c133e135b6ce67699531ad139dc9a2"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

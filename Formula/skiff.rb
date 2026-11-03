class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.5.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.3/skiff-darwin-arm64"
      sha256 "62e5a0e57c739236a4bfd29314298e6e60f1e8ff49b8088dd30aaf52773afcc5"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.3/skiff-darwin-amd64"
      sha256 "c929ec50045972b95c5776dd561a18753ea334f7afce9241e8289a932ad9a187"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.3/skiff-linux-arm64"
      sha256 "7ef713fb38116bcfa502b9185838f83c02f915e1e00a61e51e817623cdc81965"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.3/skiff-linux-amd64"
      sha256 "bc0b2d6e8b272a1b064d9727db40827b59e940a6cfbec010a8569364679358cb"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

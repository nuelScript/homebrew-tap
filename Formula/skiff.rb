class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.1/skiff-darwin-arm64"
      sha256 "9d4765934dfbbe0ab8c3bca8515b7004c872b7424250bfad6b16658e1b433fe3"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.1/skiff-darwin-amd64"
      sha256 "862e0fd60b4a6dbcec4fac9176a9d886eaf593eb5f2b4e7d28f525bc5d1e75cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.1/skiff-linux-arm64"
      sha256 "07e04b394c6989b6197f75f659ef2d948d4d34565c4d91a585637b7aac902be9"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.1/skiff-linux-amd64"
      sha256 "dcd0099e5225be625c28ac9f05799baa3a694dfc5901b7bb85e7184744ee84a3"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

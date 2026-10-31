class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.2.0/skiff-darwin-arm64"
      sha256 "fc06c73a285a0a68226069b2e010a602e5cfb4302431056d552c7d80599c8739"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.2.0/skiff-darwin-amd64"
      sha256 "edce115818c7fca05c6c1e948ed441f42585d290e1392b86f9ec2603749653ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.2.0/skiff-linux-arm64"
      sha256 "bebdfd414ca93a1adcc47d9f78b88c23fe256563b0a61e41cadc0cb91d9f0e30"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.2.0/skiff-linux-amd64"
      sha256 "fd513ada9a90e17b37d4a7b67c3dfa0358e17990f6b679c58dc241e807295490"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

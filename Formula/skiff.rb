class Skiff < Formula
  desc "Ship it to a server you own — push-to-deploy with automatic HTTPS"
  homepage "https://useskiff.xyz"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.0/skiff-darwin-arm64"
      sha256 "aab93b8647b259619c13db8fd26e847ed7ffa97d3a3124891ec3d6f6266cc359"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.0/skiff-darwin-amd64"
      sha256 "38c6269bf0bed86a02a9b05f40b760a986ac56472540bbdf4da3d68b82d0bacd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.0/skiff-linux-arm64"
      sha256 "831863b5b63645febe9c01ead56b551a2521a8d1d0d921b5356b59b822e5647f"
    end
    on_intel do
      url "https://github.com/nuelScript/skiff/releases/download/v0.5.0/skiff-linux-amd64"
      sha256 "efb5e72da61e655decc57102c35396546ddc504a7d494bfd109adb748da8e5a5"
    end
  end

  def install
    bin.install Dir["skiff-*"].first => "skiff"
  end

  test do
    assert_match(/skiff version/, shell_output("#{bin}/skiff version"))
  end
end

class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.0/shoehorn_darwin_arm64.tar.gz"
      sha256 "e610c467b49dea0ef3ae4537ec26a71b7c1a539a64aec4cc78653b47260927e4"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.0/shoehorn_darwin_amd64.tar.gz"
      sha256 "29d3bda5317e4c5d697d6eb90dfcc8d7a055ae7ee7a915cc232fa9ffec1a0101"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.0/shoehorn_linux_arm64.tar.gz"
      sha256 "5c016f40b60c62bd60b9ffb0d8a440eec309ba7d7d1d1f46b08b606da61a9336"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.0/shoehorn_linux_amd64.tar.gz"
      sha256 "1608a99418c10d73e53649d42d6f5ac245a29c6e0e15185846ae0e4fd7e0f2ad"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

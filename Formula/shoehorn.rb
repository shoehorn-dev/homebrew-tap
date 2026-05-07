class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.0/shoehorn_darwin_arm64.tar.gz"
      sha256 "3a4bcd820f0d31ee23047113e04e62a125b36597b2e0ef46607a85283d670435"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.0/shoehorn_darwin_amd64.tar.gz"
      sha256 "b3ff897aa2c126194bfcc30dc05f4817e12cf84689b37db1833b116b5ff2cbf8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.0/shoehorn_linux_arm64.tar.gz"
      sha256 "06c5ba22f55dc716267ea0a944dd29f8329030d67f2041b70985ed33e9c2480b"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.0/shoehorn_linux_amd64.tar.gz"
      sha256 "57212a41c8bc771ffc07bd8c3092909a833b6a0144f03af84ddf2e402e41c4c6"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

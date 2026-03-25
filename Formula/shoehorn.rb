class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.61"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.61/shoehorn_darwin_arm64.tar.gz"
      sha256 "7977fc0c05b40a740cb0cf489360fd7d18d7f7071eb08a3016e2342612158a39"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.61/shoehorn_darwin_amd64.tar.gz"
      sha256 "e6934c48622169ec98933cef4faaf90d3089ef05434e4764d463aa76807d6cfb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.61/shoehorn_linux_arm64.tar.gz"
      sha256 "0cf5ec97aef94570c91df03ca362300fcf5c9e06e7872d0fd36421d3112409c8"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.61/shoehorn_linux_amd64.tar.gz"
      sha256 "8bffad1c40e7168f4729b808857e857827d482f039b2d1351c67cb788f63c6c3"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

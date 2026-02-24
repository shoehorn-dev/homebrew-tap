class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.1/shoehorn_darwin_arm64"
      sha256 "9e0fc0f2473cce559ae001fa44612abda791edb8639647f8a27f1624cdd794af"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.1/shoehorn_darwin_amd64"
      sha256 "bc69e102a9586bf699f63020255acef92e3b7eb455ec4b773159eb2888d3a153"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.1/shoehorn_linux_arm64"
      sha256 "c4d60287ccd4eabc8872b2f5358bfbd132c24c6b687da2251f9530e06a1f5753"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.1/shoehorn_linux_amd64"
      sha256 "5d4d6cb9521477b6c19d4cf15d82cfc8e556f668bb22ec8248b19fee02870e69"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.3.000"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.000/shoehorn_darwin_arm64.tar.gz"
      sha256 "f6326171379a993237389a8abc51efbe63bef057b11acb65bddef5cadeb329ce"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.000/shoehorn_darwin_amd64.tar.gz"
      sha256 "dd53b69bcd7f27e6ad819557b2dbded707cce229f33bcefa58f182cd424ba2b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.000/shoehorn_linux_arm64.tar.gz"
      sha256 "5436467bd542b0587e91ea47f19f936cc67bb646f3a6453c8bc75241f1e43645"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.000/shoehorn_linux_amd64.tar.gz"
      sha256 "9fa75fdc40fba0c503a6d1afd0f8b8ba9ca85400ee778c9979a209f2b3dd1bfc"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

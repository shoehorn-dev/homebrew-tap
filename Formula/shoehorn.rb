class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.3.100"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.100/shoehorn_darwin_arm64.tar.gz"
      sha256 "0eccb740ce0040aca7a3be92be582622fae92dcab08768f82c2f04d59428f1d2"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.100/shoehorn_darwin_amd64.tar.gz"
      sha256 "58c6d1432eceaa370a19188458823e023388801bb5aabea91899fdc851b6fa33"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.100/shoehorn_linux_arm64.tar.gz"
      sha256 "9db3b44cc298030c7ab1d19e634ae2effd2cc23993416067ad39c57d96f3593e"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.100/shoehorn_linux_amd64.tar.gz"
      sha256 "a0eea8aeccee7f7ec678f3a0e9597c9ed38a3ee58d8125b0f8c3d61ed34db8af"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

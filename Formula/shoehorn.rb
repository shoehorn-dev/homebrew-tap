class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.5/shoehorn_darwin_arm64.tar.gz"
      sha256 "910f607d295c14d7ffc64d68246f71cbcf99869e0bc2628be55e48217b5f0c13"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.5/shoehorn_darwin_amd64.tar.gz"
      sha256 "acfc984c16c1395c79832747746c6350bcbd86167f4c7dfeb7feae2773c7bcde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.5/shoehorn_linux_arm64.tar.gz"
      sha256 "68211c0d89e88a95cd721a8cbce8c28859f9e37fbee50ec197080fd128f8f755"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.5/shoehorn_linux_amd64.tar.gz"
      sha256 "bc2901c4635cb57af37f751abdd3e862a39b34ccdd965fa2fb49d29bd3729217"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.4.000"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.000/shoehorn_darwin_arm64.tar.gz"
      sha256 "57c500486dfc86955bea973a50cc2a93398e7d011685dfd878c0c5fd5eba948c"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.000/shoehorn_darwin_amd64.tar.gz"
      sha256 "ec8aaa85ce78d9c13e9ab6b1d977c24fd7a7bbdc9787181232d15b5718d7b2dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.000/shoehorn_linux_arm64.tar.gz"
      sha256 "93442afa31eb24f8dea32a5ed6a6abd82341a19a737e754c243a6347ac0fda71"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.000/shoehorn_linux_amd64.tar.gz"
      sha256 "229a6678582da4412de7a98fba4126d8c6a32b9eb6b2891dca3a566806be3a0a"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

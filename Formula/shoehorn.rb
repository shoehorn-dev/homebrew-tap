class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.1/shoehorn_darwin_arm64.tar.gz"
      sha256 "9c1deed5ed538ff0a40c8e52f514e5c820da2cd82be5f295c6d9e0ffa3147b89"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.1/shoehorn_darwin_amd64.tar.gz"
      sha256 "b86eaef474079293ab413a8673ecc62e8d7d9264773080575208e1188ec5adc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.1/shoehorn_linux_arm64.tar.gz"
      sha256 "ee5c3e3d831aa4dd2bfdd7a4f6ac2baca0f158070e6e74cc3754dd60af15d989"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.3.1/shoehorn_linux_amd64.tar.gz"
      sha256 "e2a4bc841bb9dd992af59efdc6d1ffc1a7a69686ce7df4151e75acd0c72fe2d9"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

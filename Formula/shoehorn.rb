class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.0/shoehorn_darwin_arm64.tar.gz"
      sha256 "b13670a8b3d4c926f16eeaacb6cb3a383ca46d2e2d1fdd0c2a868bc1fc082ead"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.0/shoehorn_darwin_amd64.tar.gz"
      sha256 "83f75408977f8ff5c7e18e4744a55d338c7adfe740e17a220dd84867f95832af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.0/shoehorn_linux_arm64.tar.gz"
      sha256 "6b2af6fef15121d64cb2d91ddfdd209736b8036ca053e825d4ba592e79ee9f11"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.0/shoehorn_linux_amd64.tar.gz"
      sha256 "8c5fe5ad89d957f055bd98dfb40de319b0dd093114376be524f0b8297417aff1"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

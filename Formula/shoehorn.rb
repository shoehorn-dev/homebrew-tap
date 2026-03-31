class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.1/shoehorn_darwin_arm64.tar.gz"
      sha256 "4c6e65657791879a8fa09549bb711bb54f70f12575dd5f644e53fa8cc10726f6"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.1/shoehorn_darwin_amd64.tar.gz"
      sha256 "71cc703f66c0d5fc7b356eec4f2604f3a96fbf79013c72976cfab42cef3cf000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.1/shoehorn_linux_arm64.tar.gz"
      sha256 "92052492e192f645f4086bbceaa2de3aad55a2854795e084af02552f94f194c8"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.1.1/shoehorn_linux_amd64.tar.gz"
      sha256 "b59ea7eaa9e98e9fe71fe2e64527e468481fefcc79c9422187288d426431ae8c"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

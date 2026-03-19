class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.6/shoehorn_darwin_arm64.tar.gz"
      sha256 "3ddeda7d33d0a822f6527e111c5a650fabfad0289e233c7d727ca6258a6e43cb"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.6/shoehorn_darwin_amd64.tar.gz"
      sha256 "6cb2d34a1115630aecdc447e1009b6ad3a824cb7ed9ce5b0620f12d36091ae71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.6/shoehorn_linux_arm64.tar.gz"
      sha256 "b08b335c46daa5924644f242a2fec6b208c41abb6fcaf044c26f8ca716a968fc"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.6/shoehorn_linux_amd64.tar.gz"
      sha256 "73fd35da8a73449035c52d7b8b2ec3e021e3a475351dc989b69c4c5f2fec655d"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

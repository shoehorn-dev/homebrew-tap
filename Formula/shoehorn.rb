class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.2.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.21/shoehorn_darwin_arm64.tar.gz"
      sha256 "a788cd29821625397f13e8508e0b8d7140527c560377105f40435e33b1af3d2c"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.21/shoehorn_darwin_amd64.tar.gz"
      sha256 "ef8b94baee73e183aae27bc9c052fa4d6df17d0606425b5911b31b689f509bf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.21/shoehorn_linux_arm64.tar.gz"
      sha256 "37fd6d9a276d67f66e1599e3504471a6ace9fce56776996b7e69581f41394cfe"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.21/shoehorn_linux_amd64.tar.gz"
      sha256 "9ff1d6f69a12d19b3a90bd3f7db19591bef6141defffd0899d519112f53e701e"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

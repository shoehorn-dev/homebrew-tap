class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.0/shoehorn_darwin_arm64.tar.gz"
      sha256 "2c4409c761132b242378d788708a5dff185288770de78773b620257ce1810928"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.0/shoehorn_darwin_amd64.tar.gz"
      sha256 "b954495083ca6d80d054cd96cab19277287482242308c812f978d9789e0c6012"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.0/shoehorn_linux_arm64.tar.gz"
      sha256 "b1a30c28c7abe40448bbbf8942869b08119c28bba8f3e703ca094b056c15958a"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.4.0/shoehorn_linux_amd64.tar.gz"
      sha256 "9f26eb8eeeaab80fe5301c61d653711dd181dda454324e4594571d82f5e9a67e"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

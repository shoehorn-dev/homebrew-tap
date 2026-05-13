class Shoehorn < Formula
  desc "CLI for the Shoehorn Intelligent Developer Platform"
  homepage "https://github.com/shoehorn-dev/shoehorn-cli"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.1/shoehorn_darwin_arm64.tar.gz"
      sha256 "24721fe676b537267f7f1d6a0a1c313ae7689228bae2a90b81bf5ceaceca6937"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.1/shoehorn_darwin_amd64.tar.gz"
      sha256 "4cf2fac7270a0f77e93604ac1fb25633b60dbd571e5bc5efd64cc327a1c48488"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.1/shoehorn_linux_arm64.tar.gz"
      sha256 "61a6e9b843d69205a8591f9707fbfc5b3badaf4606b59d73d2de9e1fdb63f630"
    else
      url "https://github.com/shoehorn-dev/shoehorn-cli/releases/download/v0.2.1/shoehorn_linux_amd64.tar.gz"
      sha256 "ff520811d6593ed365f02c0bfc0df2dcce9c7ee164e3878266012590d10038cf"
    end
  end

  def install
    bin.install "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

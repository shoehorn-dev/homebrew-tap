class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.0.2/shoehorn_darwin_arm64"
      sha256 "43e9be26674e00c6269926027be95735d61067c56e85eff279e842782bd3ca51"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.0.2/shoehorn_darwin_amd64"
      sha256 "ddf405a382414bf992cb68cdaec87ae76ced575a45c1b8115c2acb6614d62007"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.0.2/shoehorn_linux_arm64"
      sha256 "af4119f5f5f64c5f5928dc434c7d0e239b8fabb94bf7bd8103382de308ba2e61"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.0.2/shoehorn_linux_amd64"
      sha256 "50ecb18045227a1aced999708ebb7b01ffa004662cd9c2b397697e6bf64090c2"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "shoehorn"
  end

  test do
    assert_match "Shoehorn CLI", shell_output("#{bin}/shoehorn version")
  end
end

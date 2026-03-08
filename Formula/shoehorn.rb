class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.3/shoehorn_darwin_arm64"
      sha256 "6ec5ddf9ae85bd372928899aea6b7f349c40b6e3e9325d845f0105f0417eacfe"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.3/shoehorn_darwin_amd64"
      sha256 "0777ed3a52abf6c1e2e3a68b724c11a3c61e16b24acfd627389b8964127f1dd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.3/shoehorn_linux_arm64"
      sha256 "f812ecf04ae78083d14d9ed447904ed933bb2d296c51aa4b61f9e89eb067ec2f"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.3/shoehorn_linux_amd64"
      sha256 "46cba365a0aee4d090aca6cb7d8ecb9621c294f0761f7a19f174cd81dadc7120"
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

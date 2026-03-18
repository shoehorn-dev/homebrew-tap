class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.4/shoehorn_darwin_arm64"
      sha256 "fae282a59256d6bde592e568ce8e461acbdc8197b225814e80646e8d4f9fdbb0"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.4/shoehorn_darwin_amd64"
      sha256 "2122b66fbee4baff5ae6d45e39b7bd9b0485142cf0106a9cc011f9cbcb7a6bc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.4/shoehorn_linux_arm64"
      sha256 "6bb4494f303b0ec9cad7be88342478a2e4b7aa7e96d7cd92f4c65c7cf1c2ea58"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.4/shoehorn_linux_amd64"
      sha256 "e2709f7e0c8281e1848556f226b8cf94bc3094de9c9ef31fbab61d3e385f7ee4"
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

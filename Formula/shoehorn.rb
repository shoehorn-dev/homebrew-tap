class Shoehorn < Formula
  desc "CLI for the Shoehorn Internal Developer Portal"
  homepage "https://github.com/shoehorn-dev/cli"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.2/shoehorn_darwin_arm64"
      sha256 "75d6ee616f7024bef0926af9e7e8e2195ad4c9ea3dab9b9ac9c1ec2bd64be4d4"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.2/shoehorn_darwin_amd64"
      sha256 "59a45f41b144e0217fb4c227acb674619b7c0acb3f88da608f8ca13bc5f00b53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.2/shoehorn_linux_arm64"
      sha256 "c2020c4cae04a1a8f34bdc5cb3c0a409a8746d231c2848109a7d635baee44eea"
    else
      url "https://github.com/shoehorn-dev/cli/releases/download/v0.2.2/shoehorn_linux_amd64"
      sha256 "11a4ba54427954d1e1b1352e957a84e1130f93884f39afd83575f12a21865a04"
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

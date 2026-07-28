class Swap3d < Formula
  desc "Command-line client for the Swap3D developer API"
  homepage "https://swap3d.studio/"
  version "0.2.2"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-arm64.tar.gz"
      sha256 "8698cbc20673d5d4222364dff6a11826a50ddbedaeddd0d17cb6015f76372fae"
    else
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-x64.tar.gz"
      sha256 "34eb54bc4c14e5963d9ed38c411f01b878ef404a1f933b8988dcde6591e34267"
    end
  end

  def install
    bin.install "swap3d"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swap3d --version")
  end
end

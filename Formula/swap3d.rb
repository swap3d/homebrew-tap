class Swap3d < Formula
  desc "Command-line client for the Swap3D developer API"
  homepage "https://swap3d.studio/"
  version "0.2.3"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-arm64.tar.gz"
      sha256 "d575d22529ddbd5478516c2d76d80122880c45e03da2ebd241d04b775f03d16f"
    else
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-x64.tar.gz"
      sha256 "943eabf89a7d59c46c03f309103d89a5bb6b8211c139bbde183159831c654582"
    end
  end

  def install
    bin.install "swap3d"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swap3d --version")
  end
end

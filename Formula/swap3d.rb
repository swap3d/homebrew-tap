class Swap3d < Formula
  desc "Command-line client for the Swap3D developer API"
  homepage "https://swap3d.studio/"
  version "0.3.0"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-arm64.tar.gz"
      sha256 "275e7a705faa55d7a788a94cb92d01915720daceedf2a8b9b725d7120fd85a06"
    else
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-x64.tar.gz"
      sha256 "7f634aa19f4853942fadf389a9a8613788ee01e64a169d811e2a4b889ced25ef"
    end
  end

  def install
    bin.install "swap3d"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swap3d --version")
  end
end

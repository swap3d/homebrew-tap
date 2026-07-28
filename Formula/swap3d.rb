class Swap3d < Formula
  desc "Command-line client for the Swap3D developer API"
  homepage "https://swap3d.studio/"
  version "0.2.1"
  license "Apache-2.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-arm64.tar.gz"
      sha256 "29f2a201c94b3ccdc0cc46a25a3c320f74dd68b5594b985ac3efd401baf73da2"
    else
      url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-x64.tar.gz"
      sha256 "ec8393fe0fa6f79b4fa57fd233567b8f9a8d74c3f255c871885cc3e821452674"
    end
  end

  def install
    bin.install "swap3d"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/swap3d --version")
  end
end

cask "swap3d" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "befeeb130226f515f08ffd79ed55f709dea0fb845c1b8e2dd5077d89616e2d64",
         intel: "bf1fe3fdc51099f9f58d773161defad16292a22493c1e403e7e2c35fbc8e592e"

  url "https://github.com/swap3d/swap3d-cli/releases/download/v#{version}/swap3d-darwin-#{arch}.tar.gz",
      verified: "github.com/swap3d/swap3d-cli/"
  name "Swap3D CLI"
  desc "Command-line client for the Swap3D developer API"
  homepage "https://swap3d.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "swap3d"

  zap trash: "~/.config/swap3d"
end

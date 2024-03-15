cask "unmenu" do
  version "0.1"
  sha256 "94b5dfa84f226f7ab7602a60281380bfec6e6ac7adaa1ea1d1405c0735d2b428"

  url "https://github.com/unmanbearpig/unmenu/releases/download/v#{version}/unmenu.app.zip"
  name "unmenu"
  desc "Simple app launcher inspired by dmenu"
  homepage "https://github.com/unmanbearpig/unmenu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "unmenu.app"
end

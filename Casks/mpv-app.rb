# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "mpv-app" do
  arch arm: "arm", intel: "intel"
  
  on_sonoma do
    version "0.41.0"
    sha256 arm: "5c96f9b21355fc0a11d2e2161ad65f33031070e9fb3f6bd9865fb459b94587e6"
  end
  on_sequoia do
    version "0.41.0"
    sha256 arm:   "41003617ab4f7784394b5ddea7ce51b3e0838e8cfc8166ad1a378b2eda3b583c",
           intel: "41003617ab4f7784394b5ddea7ce51b3e0838e8cfc8166ad1a378b2eda3b583c"
  end
  on_tahoe do
    version "0.41.0"
    sha256 arm: "09820c0d84f6687446b84eb9df81fcf6a26ebe869cee58ea1857d7948cfb7c71"
  end
  
  url "https://github.com/mpv-player/mpv/releases/download/v#{version}/mpv-v#{version}-macos-#{MacOS.version}-#{arch}.zip",
      verified: "github.com/mpv-player/mpv/releases/download/"
  name "mpv macOS .app-bundle"
  desc "Media player based on MPlayer and mplayer2"
  homepage "https://mpv.io/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "stolendata-mpv", because: "both install `mpv.app` bundles"

  depends_on macos: ">= :sonoma"

  app "mpv.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end

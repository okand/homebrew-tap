# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "okand-mpv-app" do
  arch arm: "arm", intel: "intel"

  on_sonoma do
    version "0.41.0"
    sha256 arm: "5c96f9b21355fc0a11d2e2161ad65f33031070e9fb3f6bd9865fb459b94587e6"
  end
  on_sequoia do
    version "0.42.0"
    sha256 arm:   "be1b8d2445e6880860869c080b8710dee189721f1fa4689840db6a2c10d7be69",
           intel: "2d2f34350ff844b6014c35f21ca142937275e19c0c673150a8564fcd2f3bfa14"
  end
  on_tahoe do
    version "0.42.0"
    sha256 arm: "81bffbda01d69eec566ee3f576a2d0089447ba4b21dece3954f08109d5435ce1"
  end
  on_golden_gate do
    version "0.42.0"
    sha256 arm: "87c7af5d908eb85217899b57d9a24cc9f5316daa93bb6b4a494a34cea25330b7"
  end

  url "https://github.com/mpv-player/mpv/releases/download/v#{version}/mpv-v#{version}-macos-#{MacOS.version}-#{arch}.zip"
  name "mpv macOS .app-bundle"
  desc "Media player based on MPlayer and mplayer2, macOS .app-bundle downloaded from the official repo"
  homepage "https://mpv.io/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "stolendata-mpv"
  depends_on macos: :sonoma

  app "mpv.app"

  caveats <<~EOS
  You have to remove the gatekeeper quarantine flag yourself
  mpv license: https://github.com/mpv-player/mpv/blob/master/Copyright
  EOS

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Logs/mpv.log",
    "~/Library/Preferences/io.mpv.plist",
    "~/Library/Preferences/mpv.plist",
  ]
end

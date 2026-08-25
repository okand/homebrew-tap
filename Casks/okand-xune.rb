# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "okand-xune" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "fe52a7add4b1d9a97864c1e199363e15b2bdaaa0e4755082dbc590fb9f8f2d18",
         intel: "fbb4e25b9a71507491a2e7bc4a65c47b8e38c292017b510156a1c994f3ceb15a"

  url "https://github.com/xune-software/xune-releases/releases/download/v#{version}/Xune-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/xune-software/xune-releases/releases/download/"
  name "Xune software"
  desc "Software for managing media on Microsoft Zune players"
  homepage "https://github.com/xune-software"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Xune.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Logs/Xune",
    "~/Library/Application Support/Xune"
   ]
end

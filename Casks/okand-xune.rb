# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "okand-xune" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1.1"
  sha256 arm:   "67c0b1bdacff3acbf45fa5ccc7e9f919e3ffdfc9dee1367b4929bef6e20e0822",
         intel: "b28f754595004ad0fe1641a078bdda42cfb025844107ba4ae278280eeba1dc5a"

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

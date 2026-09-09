# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "okand-webos-dev-manager-desktop" do

  version "1.99.20"
  sha256 "e4a85cbf0922e0832d9f7bef0c130c914979ac499124e367b23960f9595e8f0d"

  url "https://github.com/webosbrew/dev-manager-desktop/releases/download/v#{version}/webOS.Dev.Manager_#{version}_universal.dmg",
      verified: "github.com/webosbrew/dev-manager-desktop/releases/download/"
  name "webOS Dev Manager Desktop"
  desc "Device/DevMode Manager for webOS TV"
  homepage "https://github.com/webosbrew/dev-manager-desktop"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  app "webOS Dev Manager.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  #zap trash: [
  #  "~/Library/Logs/Xune",
  #  "~/Library/Application Support/Xune"
  # ]
end

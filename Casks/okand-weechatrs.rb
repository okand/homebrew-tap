# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "okand-weechatrs" do

  version "0.5.0"
  sha256 "06e620adfd002a9807685d3aa01bd299a04985de411d9e9474d6180908ca26e8"

  url "https://github.com/rnocx/WeeChatRS/releases/download/v0.5.0/WeeChatRS-#{version}-macos-universal.dmg"
  name "WeeChatRS"
  desc "Desktop client for Weechat Relay"
  homepage "https://github.com/rnocx/WeeChatRS"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  app "WeeChatRS.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  #zap trash: [
  #  "~/Library/Logs/weechatrs",
  #  "~/Library/Application Support/weechatrs"
  # ]
end

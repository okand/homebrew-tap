# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "okand-weechatrs" do

  version "0.8.1"
  sha256 "25f15bd186056f4f7dfe5eb02c05783af295f81de2be7c02d775615612cc45aa"

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

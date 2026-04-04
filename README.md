# homebrew-tap

## okand-mpv-app
Custom homebrew tap to download and place the macOS mpv.app bundle they started providing with the release of version 0.41.0. Only tested on Tahoe (26) and Sequoia (15) on ARM but I think the `on_version` sections should work for the intel build too.

`brew install okand/tap/okand-mpv-app`

You need to remove the gatekeeper quarantine flag youself after installing. This is regarded as unsafe and not allowed to happen in official homebrew taps anymore. Please be aware of what you are doing here. You also probably need to do this again after each version update.

It can be done with the following command:

`xattr -r -d com.apple.quarantine /Applications/mpv.app`

`-r` means that `xattr` operates on a directory because that is what .app bundles actually are. They just pretend to be an executable file.

`-d` means that we want to delete an attribute. In this case `com.apple.quarantine`.

And finally `/Applications/mpv.app` is the path to the object we want to operate on.

cask "watson-menu-bar" do
  version "1.3"
  sha256 "59cc7daee40756a37e7216aaf50d35e18f00360dbbf1ce0db1c2e10bc949591b"

  url "https://github.com/Michitime/watson-menu-bar-item/releases/download/#{version}/WatsonMenuBar-#{version}.zip"
  name "WatsonMenuBar"
  desc "Menu bar companion for the Watson CLI time tracker"
  homepage "https://github.com/Michitime/watson-menu-bar-item"

  depends_on formula: "watson"
  depends_on macos: ">= :ventura"

  app "WatsonMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.michitime.WatsonMenuBar.plist",
  ]

  caveats <<~EOS
    WatsonMenuBar is ad-hoc signed and not notarized. If macOS blocks launch,
    approve it in System Settings > Privacy & Security.
  EOS
end

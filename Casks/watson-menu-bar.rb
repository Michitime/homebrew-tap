cask "watson-menu-bar" do
  version "1.2"
  sha256 "a31c3b69daf20397184a55228b96cdc1a80de15d074fc7659c6d3830bdc9ea85"

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

cask "watson-menu-bar" do
  version "1.4"
  sha256 "31c6a1eebbe9f0338910cc0cc1a2e8bdd474495dfcfa33d34606ac7924bc7dfa"

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

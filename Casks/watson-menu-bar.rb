cask "watson-menu-bar" do
  version "1.4.1"
  sha256 "8869701558e5d7d8b38e44ce03564f77c3b9ecabd1ab7607841aa035e2bcf1bc"

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

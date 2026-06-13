cask "watson-menu-bar" do
  version "2.0"
  sha256 "0efdd38bd53ac92026ccd148a61fbc7d8737b1ec1d69e9e1276371958e789017"

  url "https://github.com/Michitime/watson-menu-bar-item/releases/download/#{version}/WatsonMenuBar-#{version}.zip"
  name "WatsonMenuBar"
  desc "Menu bar companion for the Watson CLI time tracker"
  homepage "https://github.com/Michitime/watson-menu-bar-item"

  depends_on formula: "watson"
  depends_on macos: :sequoia

  app "WatsonMenuBar.app"

  zap trash: [
    "~/Library/Preferences/com.michitime.WatsonMenuBar.plist",
  ]

  caveats <<~EOS
    WatsonMenuBar is ad-hoc signed and not notarized. If macOS blocks launch,
    approve it in System Settings > Privacy & Security.
  EOS
end

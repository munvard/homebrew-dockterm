cask "dockterm" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "0.32.3"
  sha256 arm:   "da86a83a3381e91a5f868ce2836b6f6bb01962897c7c417c3984cb7a30f543cc",
         intel: "80230d04d645726fbc8639ce3618fe24528102bb14b939cb2984f35f9ddb4b6e"

  url "https://github.com/munvard/dockterm/releases/download/v#{version}/DockTerm-#{version}-macOS-#{arch}.dmg"
  name "DockTerm"
  desc "Terminal-first workspace for Claude Code"
  homepage "https://github.com/munvard/dockterm"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "DockTerm.app"

  zap trash: [
    "~/Library/Application Support/DockTerm",
    "~/Library/Preferences/com.dockterm.app.plist",
    "~/Library/Saved Application State/com.dockterm.app.savedState",
  ]
end

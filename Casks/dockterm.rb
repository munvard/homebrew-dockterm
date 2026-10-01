cask "dockterm" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "0.31.0"
  sha256 arm:   "cdd2f04bfaad4eb1c32ec0875c2c64c44e6211a50156ab7bb28ac12750de2dd9",
         intel: "459a254afa81c374975e46e095fbd29e97bbc97ae9d4851e9c9bf47eaf521013"

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

cask "spuerhund-app" do
  version "0.3.0"
  sha256 "a63b242ecd574917b6eac8e0f6c871b06134e4f4ec29752aeb6415c8bd85bb62"

  url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/desktop-v0.3.0/Spurhund-0.3.0-arm64.dmg"
  name "Spürhund"
  desc "GraphQL, MongoDB, SQL query workbench"
  homepage "https://spuerhund.dev"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Spürhund.app"

  zap trash: [
    "~/Library/Application Support/@spuerhund/desktop",
    "~/Library/Preferences/com.spuerhund.app.plist",
    "~/Library/Saved Application State/com.spuerhund.app.savedState",
  ]
end

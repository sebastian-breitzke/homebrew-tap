cask "spuerhund-app" do
  version "0.3.0"
  sha256 "4fe403cc58df411ca1873fc9f24ea6bcd3367b596b7268367705cff5a1347a6f"

  url "https://github.com/sebastian-breitzke/spuerhund/releases/download/desktop-v0.3.0/Spurhund-0.3.0-arm64.dmg"
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

cask "lesepult" do
  version "0.11.0"
  sha256 "fe8155442e49fe2277946b594354e0cdb928599a5beed73caafcfab0c1898a72"

  url "https://github.com/sebastian-breitzke/lesepult/releases/download/v#{version}/Lesepult-#{version}-arm64.dmg"
  name "Lesepult"
  desc "Minimal Markdown reader with Tufte-style typography"
  homepage "https://github.com/sebastian-breitzke/lesepult"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Lesepult.app"

  zap trash: [
    "~/Library/Application Support/de.s16e.lesepult",
    "~/Library/Preferences/de.s16e.lesepult.plist",
    "~/Library/Saved Application State/de.s16e.lesepult.savedState",
  ]
end

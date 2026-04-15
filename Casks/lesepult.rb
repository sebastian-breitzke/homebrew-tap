cask "lesepult" do
  version "0.2.0"
  sha256 "36628f5a9fe650108a64200553b52884aae0a051f061edbb537eac46a2ec08ec"

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

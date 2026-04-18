cask "lesepult" do
  version "0.5.0"
  sha256 "444178c6c8e1611be4d97c4093e911df012e04c9cbf177f8e5e30e1d5323698e"

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

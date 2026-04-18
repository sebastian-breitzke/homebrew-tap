cask "lesepult" do
  version "0.5.0"
  sha256 "7d38306a7ee7db9f2b2073fe0d3f09a93db480cd13504b899833454e05a6a497"

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

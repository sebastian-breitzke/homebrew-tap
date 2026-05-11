cask "lesepult" do
  version "0.8.0"
  sha256 "15de6fa6cc35c5e60ab2d9279ce3d1a9cf8467d89f1cda3efc5ac10ec466088a"

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

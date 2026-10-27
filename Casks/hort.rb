cask "hort" do
  version "0.3.0"
  sha256 "f75e7ba235164b27ed00ef0566dcb8ee945f2c7dff8a4b3512a98319af8cd69b"

  url "https://github.com/sebastian-breitzke/hort/releases/download/v#{version}/hort_#{version}_darwin_universal.dmg"
  name "hort"
  desc "Local secret and config store for humans and AI agents"
  homepage "https://github.com/sebastian-breitzke/hort"

  depends_on formula: "sebastian-breitzke/tap/hort"

  app "hort.app"

  zap trash: [
    "~/.hort",
  ]
end

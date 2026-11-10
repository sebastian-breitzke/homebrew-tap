cask "hort" do
  version "1.4.0"
  sha256 "c6463cc8afcd59f40cdb315508bf9c94e0958b80563a4f2583100c96748e8c05"

  url "https://github.com/gefuege/hort/releases/download/v#{version}/hort_#{version}_darwin_universal.dmg"
  name "hort"
  desc "Local, encrypted secret store with sync for humans and AI agents"
  homepage "https://github.com/gefuege/hort"

  depends_on formula: "sebastian-breitzke/tap/hort"

  app "hort.app"

  zap trash: [
    "~/.hort",
  ]
end

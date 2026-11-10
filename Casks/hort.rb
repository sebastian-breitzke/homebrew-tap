cask "hort" do
  version "1.3.0"
  sha256 "fe706f8844ee1630726e40411177f68ae4a06b3da43d3c814c2569a90b053761"

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

cask "hort" do
  version "1.0.0"
  sha256 "b2a8cf774606904034ebc1e5b7ad499541c4c2f6baf0b57392f8766764760c4d"

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

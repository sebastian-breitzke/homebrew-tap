cask "hort" do
  version "1.5.1"
  sha256 "4052f0a0c4a48270063e59b1f008a5b528dae19e6e58ab79b4e19e68b898d00a"

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

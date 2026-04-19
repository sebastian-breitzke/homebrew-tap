cask "hort" do
  version "0.2.2"
  sha256 "7cb7bf8d9363f7ac984b177b00431038c4fe94c2b1f97c1eab329e2f00cbf371"

  url "https://github.com/sebastian-breitzke/hort/releases/download/v#{version}/hort_#{version}_darwin_universal.dmg"
  name "hort"
  desc "Local secret and config store for humans and AI agents"
  homepage "https://github.com/sebastian-breitzke/hort"

  depends_on macos: ">= :catalina"

  app "hort.app"

  zap trash: [
    "~/.hort",
  ]
end

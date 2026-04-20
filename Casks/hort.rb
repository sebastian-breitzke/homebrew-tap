cask "hort" do
  version "0.2.5"
  sha256 "2657142752c7ccfea1f5cc1e34961e600a23b526b5f8d124ad6c515889c700a2"

  url "https://github.com/sebastian-breitzke/hort/releases/download/v#{version}/hort_#{version}_darwin_universal.dmg"
  name "hort"
  desc "Local secret and config store for humans and AI agents"
  homepage "https://github.com/sebastian-breitzke/hort"

  depends_on macos: ">= :catalina"
  depends_on formula: "sebastian-breitzke/tap/hort"

  app "hort.app"

  zap trash: [
    "~/.hort",
  ]
end

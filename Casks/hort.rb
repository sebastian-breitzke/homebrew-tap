cask "hort" do
  version "0.2.4"
  sha256 "32af43d16750c1d95676b544fe876e2c373f750eb09333656be3feda2f1aa855"

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

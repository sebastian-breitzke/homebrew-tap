cask "hort" do
  version "0.2.3"
  sha256 "0313ffa0991585219d9bd906a8344f409793c6be4aeaf241a9d57adb5508e0af"

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

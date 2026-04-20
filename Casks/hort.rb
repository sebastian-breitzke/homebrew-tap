cask "hort" do
  version "0.2.6"
  sha256 "d792ce7fff9bf62a79312659b0faf1028fc91cee06b4c4c61e1f44e0a82962ab"

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

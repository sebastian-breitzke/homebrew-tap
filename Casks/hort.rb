cask "hort" do
  version "1.5.0"
  sha256 "4dca9b93e00f4abae9fc1d7062b002ade088c96d494bdc93f9c50d1f09cfe95b"

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

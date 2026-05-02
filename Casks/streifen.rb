cask "streifen" do
  version "0.3.8"
  sha256 "5b3b163862a7171253c55a605d4a9f66b6c882bb0b6257129b1b5ba33600d2f1"

  url "https://github.com/sebastian-breitzke/streifen/releases/download/v#{version}/Streifen-#{version}-arm64.dmg"
  name "Streifen"
  desc "Tiling strip window manager for macOS"
  homepage "https://github.com/sebastian-breitzke/streifen"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Streifen.app"

  postflight do
    system_command "xattr", args: ["-rd", "com.apple.quarantine", "#{appdir}/Streifen.app"]
  end

  zap trash: [
    "~/.config/streifen",
    "~/Library/Application Support/Streifen",
  ]
end

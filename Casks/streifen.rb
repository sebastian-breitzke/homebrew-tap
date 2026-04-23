cask "streifen" do
  version "0.3.5"
  sha256 "dd16dc48c1a25e1dd6b970ffa1d8f66efe138ee1e4d23590597bc0ec2499fb01"

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

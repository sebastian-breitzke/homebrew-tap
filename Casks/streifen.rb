cask "streifen" do
  version "0.3.11"
  sha256 "9fbe2fe046433f97d8d143267220b986a9560dec16b8aa2eb1e1e847269aeb6e"

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

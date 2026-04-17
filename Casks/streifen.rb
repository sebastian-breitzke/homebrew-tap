cask "streifen" do
  version "0.3.2"
  sha256 "3e5f9bfc7f13814a323f56630ee29f4d3d57899b5ae8bd9ebe4e0c4061e121f0"

  url "https://github.com/sebastian-breitzke/streifen/releases/download/v#{version}/Streifen-#{version}-arm64.dmg"
  name "Streifen"
  desc "Tiling strip window manager for macOS"
  homepage "https://github.com/sebastian-breitzke/streifen"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Streifen.app"

  zap trash: [
    "~/.config/streifen",
    "~/Library/Application Support/Streifen",
  ]
end

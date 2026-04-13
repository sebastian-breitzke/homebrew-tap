cask "streifen" do
  version "0.2.1"
  sha256 "0af1f49101b83aba8d82ce4a00c60e752b627e901876f11ff7aacdf5125cab75"

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

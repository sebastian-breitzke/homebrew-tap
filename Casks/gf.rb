cask "gf" do
  version "0.1.658"
  sha256 "683e496a415d4add721593c361a68a4eab6a12f46581be4612ae1c912d3da2ab"

  url "https://github.com/gefuege/gf/releases/download/gf-v#{version}/gf-#{version}-aarch64-apple-darwin.dmg"
  name "gf"
  desc "Command-line access to Gefüge"
  homepage "https://github.com/gefuege/gf"

  depends_on arch: :arm64

  binary "gf"
end

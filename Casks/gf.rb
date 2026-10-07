cask "gf" do
  version "0.1.607"
  sha256 "71478eb680f72a205138b464244c4208f199c84514cc7a589539376af9dc5137"

  url "https://github.com/gefuege/gf/releases/download/gf-v#{version}/gf-#{version}-aarch64-apple-darwin.dmg"
  name "gf"
  desc "Command-line access to Gefüge"
  homepage "https://github.com/gefuege/gf"

  depends_on arch: :arm64

  binary "gf"
end

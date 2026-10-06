cask "gf" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.578"
  sha256 arm: "a28b0402b0d240af770e0da62878f2c5478c75b1c9b6110cec13c91158a88214",
         intel: "7fafdea8fefdc8c840d3c4097f584ea7cd7b922697bdcf291959d384153778d6"

  url "https://github.com/gefuege/gf/releases/download/gf-v#{version}/gf-#{version}-#{arch}-apple-darwin.dmg"
  name "gf"
  desc "Command-line access to Gefüge"
  homepage "https://github.com/gefuege/gf"

  binary "gf"
end

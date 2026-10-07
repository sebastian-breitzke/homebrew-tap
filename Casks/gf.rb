cask "gf" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.588"
  sha256 arm: "15e86625197dbb1863fa0f32cc832c4668f5cab18f94ee91b5af40b97b05e70e",
         intel: "9b10d8da065a8d6c970178f3e2ad42c50d67fa68b51b7b6ae404acfc8690ed63"

  url "https://github.com/gefuege/gf/releases/download/gf-v#{version}/gf-#{version}-#{arch}-apple-darwin.dmg"
  name "gf"
  desc "Command-line access to Gefüge"
  homepage "https://github.com/gefuege/gf"

  binary "gf"
end

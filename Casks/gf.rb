cask "gf" do
  version "0.1.691"
  sha256 "8cdf4c84562ce15b8ba4feb450e6fe76f7fcd6c7c98017448dee09710fe364a4"

  url "https://github.com/gefuege/gf/releases/download/gf-v#{version}/gf-#{version}-aarch64-apple-darwin.dmg"
  name "gf"
  desc "Command-line access to Gefüge"
  homepage "https://github.com/gefuege/gf"

  depends_on arch: :arm64

  binary "gf"
end

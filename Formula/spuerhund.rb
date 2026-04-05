class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.5-runtime"

  on_macos do
    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.5/spuerhund-runtime_0.1.5_darwin_arm64.tar.gz"
      sha256 "60d264e648c41f1463b6f23a449aba39367229c1107540291388d21d0d2c10d2"
    end
  end

  def install
    bin.install Dir["spuerhund*"].find { |path| File.file?(path) } => "spuerhund"
  end

  def caveats
    <<~EOS
      Install and start the background service with:
        spuerhund runtime install-service

      Generate a pairing code with:
        spuerhund runtime pair
    EOS
  end

  test do
    assert_predicate bin/"spuerhund", :executable?
  end
end

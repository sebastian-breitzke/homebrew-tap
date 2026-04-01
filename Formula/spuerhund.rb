class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.3-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.3/spuerhund-runtime_0.1.3_darwin_x64.tar.gz"
      sha256 "7c751a0de7800d3462e499ffa30db0889571ae6cd178acea8ba75491e1eba803"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.3/spuerhund-runtime_0.1.3_darwin_arm64.tar.gz"
      sha256 "a31a3a369b52f8861d28820dc76a74361a5a1dbc6a533c7de6295c0b75d97833"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.3/spuerhund-runtime_0.1.3_linux_x64.tar.gz"
      sha256 "910429041333df8bbd7b7ac1fe0f3765b31f567498d8a2ca80a88c1ec4d982a5"
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

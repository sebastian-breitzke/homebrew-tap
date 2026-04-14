class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.2.3-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.3/spuerhund-runtime_0.2.3_darwin_x64.tar.gz"
      sha256 "84f9bfabe74196c305080025804be9eba8aad36228224d4002c4afe84afc6585"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.3/spuerhund-runtime_0.2.3_darwin_arm64.tar.gz"
      sha256 "321bd7ab71f03deef57a67255f56a4c77fb8701189c1a928f9c99a465e8015fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.3/spuerhund-runtime_0.2.3_linux_x64.tar.gz"
      sha256 "7bf97017d5170ec62580221f2cf41cee997605f442f27ce3d7e9ffd3e241d943"
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

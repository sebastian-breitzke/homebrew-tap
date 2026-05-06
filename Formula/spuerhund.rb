class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.2.5-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.5/spuerhund-runtime_0.2.5_darwin_x64.tar.gz"
      sha256 "827d3ec98ba431351030e37f7e7141763c9d57d4b8430647ac624444b569b10a"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.5/spuerhund-runtime_0.2.5_darwin_arm64.tar.gz"
      sha256 "91815c3ed54dea77da5881c7cc627d2f00a5bf65a32ac5845d08730f1c76cba2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.5/spuerhund-runtime_0.2.5_linux_x64.tar.gz"
      sha256 "0f7283303e5ca0f04b98e747fa0c07774e79068e29164c3e6ee21570ce3c3b48"
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

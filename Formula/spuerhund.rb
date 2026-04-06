class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.2.0-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.0/spuerhund-runtime_0.2.0_darwin_x64.tar.gz"
      sha256 "89dc2416b15fc67f945db9e8dacaafbdc4c0a0fcb52004bc217006b33519084d"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.0/spuerhund-runtime_0.2.0_darwin_arm64.tar.gz"
      sha256 "0ed583262e2bfbb2369e132e849cc7fa94a572fe76142e42ee25e87e61e9e096"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.0/spuerhund-runtime_0.2.0_linux_x64.tar.gz"
      sha256 "0084aa6490db45e62833ba5540613e73925c2de0e0c39ab84bcb021c474289cc"
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

class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.2-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/spuerhund/releases/download/runtime-v0.1.2/spuerhund-runtime_0.1.2_darwin_x64.tar.gz"
      sha256 "676331166fec1b8f6aed24505a8437ada0ef895c8bf72df117f2010542efe8f6"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/spuerhund/releases/download/runtime-v0.1.2/spuerhund-runtime_0.1.2_darwin_arm64.tar.gz"
      sha256 "7f8580bac710de7b368d549fca3311b2c1a1f3134f93917d8e4054183ce70a25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/spuerhund/releases/download/runtime-v0.1.2/spuerhund-runtime_0.1.2_linux_x64.tar.gz"
      sha256 "1d1e25d7aa132f37f51054cb743f284714e9ad406aaa4f00236db819ab381b24"
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

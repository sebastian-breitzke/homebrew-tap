class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.2.1-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.1/spuerhund-runtime_0.2.1_darwin_x64.tar.gz"
      sha256 "c10b61116241570ac0c9825e586669067e3367cf78de9a427a90fc43121de97e"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.1/spuerhund-runtime_0.2.1_darwin_arm64.tar.gz"
      sha256 "cc1fec9e5f65e8f8f1fa1e60ae833a7768f3998d25c888ca603f4bb11a80dc9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.1/spuerhund-runtime_0.2.1_linux_x64.tar.gz"
      sha256 "cd179f1c6248b4158b8f56b78703be05f89cca72546b2a14f4faf29547e0fb8b"
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

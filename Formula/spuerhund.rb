class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.2.2-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.2/spuerhund-runtime_0.2.2_darwin_x64.tar.gz"
      sha256 "ff1597cb6e6e7554dfc2df5dbe82db5af0447ea7136f44b5ee9149025c3cce2c"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.2/spuerhund-runtime_0.2.2_darwin_arm64.tar.gz"
      sha256 "ebebaa00db266dd0f361d1560a6f44b0cc7ff812bc10341fb0af4732bf55b078"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.2/spuerhund-runtime_0.2.2_linux_x64.tar.gz"
      sha256 "e3eee93adc07b5328aebf5c612415bd8edb04ca709f12af909c819f61c0348e1"
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

class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.4-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.4/spuerhund-runtime_0.1.4_darwin_x64.tar.gz"
      sha256 "0e8b3490fe97118540c5899578c1ef2f90e9202416cf9af30cb3d9e4e056e8c7"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.4/spuerhund-runtime_0.1.4_darwin_arm64.tar.gz"
      sha256 "b01f46c70a7ee857aa4ccab132593e04c39b2f430b27bae14b46769446821ca1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.4/spuerhund-runtime_0.1.4_linux_x64.tar.gz"
      sha256 "1841a84ab4cc62ec66eda11005294b28016457d83067e0d44c451e08f68f636a"
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

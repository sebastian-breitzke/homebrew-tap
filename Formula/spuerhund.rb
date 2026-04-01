class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.2-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.2/spuerhund-runtime_0.1.2_darwin_x64.tar.gz"
      sha256 "2b53136cd99630c1e78830bf2434f2cd7cbb2670cc4133a0053c36b17b0b9692"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.2/spuerhund-runtime_0.1.2_darwin_arm64.tar.gz"
      sha256 "af23cd53bb008d0371bf0c4f92412877ea349c484749aa25ee185478ac17b482"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.1.2/spuerhund-runtime_0.1.2_linux_x64.tar.gz"
      sha256 "8454d7ec1514c0bdbdc4f90c895499b4128ac62a2232fa72dac8c8baa3787f2c"
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

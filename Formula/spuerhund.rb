class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.2.4-runtime"

  on_macos do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.4/spuerhund-runtime_0.2.4_darwin_x64.tar.gz"
      sha256 "af1920cfb73c4100bb1ca43c2c1d44e619b0ba82dc8f67e4378ab399a0aca2b8"
    end

    on_arm do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.4/spuerhund-runtime_0.2.4_darwin_arm64.tar.gz"
      sha256 "1edada78c5c7adc02490bac8a82a100653fdd9d773f54982e0d15889f0c45ebb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sebastian-breitzke/homebrew-tap/releases/download/runtime-v0.2.4/spuerhund-runtime_0.2.4_linux_x64.tar.gz"
      sha256 "5148645245c6509f0bd8aeb52d8ce8a506d448fe6ca69c5b14f39c4db402e19c"
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

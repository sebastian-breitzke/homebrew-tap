class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.0-runtime"
  url "https://github.com/sebastian-breitzke/spuerhund.git",
      branch:   "main",
      revision: "e3a0d45a4ced788632c6518f9ece89ce3b1ea578"
  head "https://github.com/sebastian-breitzke/spuerhund.git", branch: "main"

  depends_on "oven-sh/bun/bun" => :build

  def install
    system "bun", "install", "--frozen-lockfile"
    system "bun", "run", "build:runtime"

    platform =
      if OS.mac?
        "darwin"
      elsif OS.linux?
        "linux"
      else
        raise "Unsupported platform for Spürhund runtime"
      end

    arch =
      if Hardware::CPU.arm?
        "arm64"
      elsif Hardware::CPU.intel?
        "x64"
      else
        raise "Unsupported CPU architecture for Spürhund runtime"
      end

    bin.install "dist/runtime/spuerhund-runtime-#{platform}-#{arch}" => "spuerhund"
  end

  def caveats
    <<~EOS
      Start the local runtime with:
        spuerhund runtime start

      Generate a pairing code with:
        spuerhund runtime pair
    EOS
  end

  test do
    assert_predicate bin/"spuerhund", :executable?
  end
end

class Spuerhund < Formula
  desc "Local-first API workbench runtime for Spürhund"
  homepage "https://github.com/sebastian-breitzke/spuerhund"
  version "0.1.1-runtime"
  url "https://github.com/sebastian-breitzke/spuerhund.git",
      branch:   "main",
      revision: "37d7dd1f3ad051d538d4400c49b98d694a3c2cd6"
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

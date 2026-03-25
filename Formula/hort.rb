class Hort < Formula
  desc "Local secret and config store for humans and AI agents"
  homepage "https://github.com/sebastian-breitzke/hort"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sebastian-breitzke/hort/releases/download/v0.1.1/hort_0.1.1_darwin_arm64.tar.gz"
      sha256 "64c37139b456e69251ded5bf10fef12e96ee55bf74c5b2d33a2482fbb84be680"
    end
    on_intel do
      url "https://github.com/sebastian-breitzke/hort/releases/download/v0.1.1/hort_0.1.1_darwin_amd64.tar.gz"
      sha256 "242d9da15da2645d4cb4d7bf4469c08eb1e1018e57383d8ec974c8848e43e37a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastian-breitzke/hort/releases/download/v0.1.1/hort_0.1.1_linux_arm64.tar.gz"
      sha256 "ba41037639bf53bc0bd8f4e2807253ddde8cc05dc569b8686cc28749603908cb"
    end
    on_intel do
      url "https://github.com/sebastian-breitzke/hort/releases/download/v0.1.1/hort_0.1.1_linux_amd64.tar.gz"
      sha256 "33baecf32615b049aeada423fd5649021a4c77a43e2e5cae172e539ecec6b83e"
    end
  end

  def install
    bin.install "hort"
  end

  test do
    assert_match "Hort", shell_output("#{bin}/hort --help")
  end
end

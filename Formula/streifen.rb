class Streifen < Formula
  desc "Tiling strip window manager for macOS"
  homepage "https://github.com/sebastian-breitzke/streifen"
  url "https://github.com/sebastian-breitzke/streifen.git",
      tag:      "v0.1.0",
      revision: "d53bb4938fe477a1ed8672261f90ee515aa9d099"
  license "MIT"
  head "https://github.com/sebastian-breitzke/streifen.git", branch: "main"

  depends_on :macos => :sonoma

  def install
    system "swift", "build",
           "-c", "release",
           "--disable-sandbox"
    bin.install ".build/release/Streifen" => "streifen"
  end

  service do
    run opt_bin/"streifen"
    keep_alive true
    log_path var/"log/streifen.log"
    error_log_path var/"log/streifen.log"
  end

  def caveats
    <<~EOS
      Streifen requires Accessibility permissions.
      Grant access in System Settings → Privacy & Security → Accessibility.

      To start as a background service:
        brew services start streifen

      Or run manually:
        streifen
    EOS
  end

  test do
    assert_predicate bin/"streifen", :executable?
  end
end

class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260702214619"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260702214619/clonedb-0.1.0-dev.20260702214619-aarch64-apple-darwin.tar.gz"
      sha256 "0d888be9f1b378672a021a912cad6c6d33fc318c3416b9caf1576cc0fb02e23e"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260702214619/clonedb-0.1.0-dev.20260702214619-x86_64-apple-darwin.tar.gz"
      sha256 "4f22186736c3f732d1f85face6007f154066caf5e85762910c5c53aebf016c38"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.1-dev.20260925213226"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925213226/clonedb-0.1.1-dev.20260925213226-aarch64-apple-darwin.tar.gz"
      sha256 "6baac0719c048af4f3abe031572ea94f22f244b3c1e53b397fcf184da854e21f"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925213226/clonedb-0.1.1-dev.20260925213226-x86_64-apple-darwin.tar.gz"
      sha256 "635a862556b9054c41fe5faebb4466c6be0ce6104f14b0e3241d698eabcf8986"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

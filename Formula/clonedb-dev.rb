class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260701230714"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701230714/clonedb-0.1.0-dev.20260701230714-aarch64-apple-darwin.tar.gz"
      sha256 "3680b815f153bf737bede6c4f2c07c330c93448bf4b56567f13878f80ab4d25e"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701230714/clonedb-0.1.0-dev.20260701230714-x86_64-apple-darwin.tar.gz"
      sha256 "af19baa3ec63f6b1efe928730a3041bca2a56257b58739f051395b16eb5ca9d0"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

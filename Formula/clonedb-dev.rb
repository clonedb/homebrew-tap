class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260701203243"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701203243/clonedb-0.1.0-dev.20260701203243-aarch64-apple-darwin.tar.gz"
      sha256 "503958717805cc47e67bb88a4448a52c5673026d31144ee987f4932dc9618280"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701203243/clonedb-0.1.0-dev.20260701203243-x86_64-apple-darwin.tar.gz"
      sha256 "be8476dac5b3b5f2b5667ae704e30e42fd6187d57422622e4974bc86144a1be1"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

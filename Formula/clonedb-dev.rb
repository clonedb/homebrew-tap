class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260701163500"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701163500/clonedb-0.1.0-dev.20260701163500-aarch64-apple-darwin.tar.gz"
      sha256 "cbc400d39d2ad4628aaf46ebe74ba82684c357d6dc60dc97469d32e75d724fad"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701163500/clonedb-0.1.0-dev.20260701163500-x86_64-apple-darwin.tar.gz"
      sha256 "446c71dab6550c48e7f080c04bd21a2a50a7bd2507ac2773c07f899303dd3b85"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

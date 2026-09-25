class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.1-dev.20260925231632"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925231632/clonedb-0.1.1-dev.20260925231632-aarch64-apple-darwin.tar.gz"
      sha256 "2d829b0c3410f80dcae088a57610b82806bc08ece288be61ee8afa5f62583b3b"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925231632/clonedb-0.1.1-dev.20260925231632-x86_64-apple-darwin.tar.gz"
      sha256 "5825eed8e8877c8f7a3f9f8c9d8f503fb4881fc77a2fdcae74e4e9722b5f122d"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

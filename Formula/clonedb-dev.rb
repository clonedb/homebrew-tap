class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.4-dev.20261022150331"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261022150331/clonedb-0.1.4-dev.20261022150331-aarch64-apple-darwin.tar.gz"
      sha256 "1917dddcb8917075710dc71b2073ce9ce87c56f014e6e9de3283991efe1bdf55"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261022150331/clonedb-0.1.4-dev.20261022150331-x86_64-apple-darwin.tar.gz"
      sha256 "7c474002897ff41a5d168d7f7fe257cb219552484bef415ac4b2ba342771ccdb"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

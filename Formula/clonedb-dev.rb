class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.4-dev.20261020211409"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261020211409/clonedb-0.1.4-dev.20261020211409-aarch64-apple-darwin.tar.gz"
      sha256 "f8ae27b7e9cc1855cf8a3319d95942662a03db372fdafd6ba5949793ca4f8018"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261020211409/clonedb-0.1.4-dev.20261020211409-x86_64-apple-darwin.tar.gz"
      sha256 "159320efa8088d0668d74f3031f115a42be5d834cb588afc688337b3a1b07253"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

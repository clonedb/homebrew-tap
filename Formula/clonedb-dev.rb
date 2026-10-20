class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.4-dev.20261020194152"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261020194152/clonedb-0.1.4-dev.20261020194152-aarch64-apple-darwin.tar.gz"
      sha256 "04877010d443d52134bb7d3e48da5b5d40a8b8f89baed15a600996de41d43fdf"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261020194152/clonedb-0.1.4-dev.20261020194152-x86_64-apple-darwin.tar.gz"
      sha256 "23dd04c59d226fd44f2f4f94a21acdc46d3994e7ebf81aa6c2ec2cf498372a93"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

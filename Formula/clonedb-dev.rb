class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.1-dev.20260925180547"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925180547/clonedb-0.1.1-dev.20260925180547-aarch64-apple-darwin.tar.gz"
      sha256 "1a50c53f5458df46b05b2f14bcba7d29b28ad5b9548f9987a62c014228b7e909"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925180547/clonedb-0.1.1-dev.20260925180547-x86_64-apple-darwin.tar.gz"
      sha256 "863485358edd93feeb0fa24b4e4365b96633da6594e8ca65457bec95d13cb0ef"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260703034043"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260703034043/clonedb-0.1.0-dev.20260703034043-aarch64-apple-darwin.tar.gz"
      sha256 "c32b1ebf733190bdb9f2ceab810c4f3ed8448423361a43c599497542310123d2"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260703034043/clonedb-0.1.0-dev.20260703034043-x86_64-apple-darwin.tar.gz"
      sha256 "92f2dc15060c40935c631a9b9317aee34b1984fdf72fced0d1437eb3d51c0d87"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

class Clonedb < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.3/clonedb-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "0b5275259ab3ae9cdb3d4f250458f48416a6d69d39da0ded9bf80bb262c4d15d"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.3/clonedb-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "cc6a8e3cac865ab91aa59a131c9f36415793ae97c1ff34b43b645d1594e38cc7"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

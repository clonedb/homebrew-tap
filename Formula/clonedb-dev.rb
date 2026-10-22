class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.4-dev.20261022161318"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261022161318/clonedb-0.1.4-dev.20261022161318-aarch64-apple-darwin.tar.gz"
      sha256 "5c1639ae21accfdd9fbf0baa29f5c63f50ea598327835bd641101d640446b609"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261022161318/clonedb-0.1.4-dev.20261022161318-x86_64-apple-darwin.tar.gz"
      sha256 "5ce1ddf771a987d21f456ab2403efb7cff0f9b62898cfa9d15e175b94e1b813e"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

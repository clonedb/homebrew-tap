class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.4-dev.20261022174105"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261022174105/clonedb-0.1.4-dev.20261022174105-aarch64-apple-darwin.tar.gz"
      sha256 "f62560e007fee27978fc807e385615a89f4f9cd0e5716f07eea516bb4611e36b"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4-dev.20261022174105/clonedb-0.1.4-dev.20261022174105-x86_64-apple-darwin.tar.gz"
      sha256 "814e0d8613786c27a560768809170be54f41c23ebdd63fdc03d479364f2954a8"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

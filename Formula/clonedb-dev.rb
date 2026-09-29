class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.3-dev.20260929224124"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.3-dev.20260929224124/clonedb-0.1.3-dev.20260929224124-aarch64-apple-darwin.tar.gz"
      sha256 "45889313d01e2e89802774af89e9d77432c05e9cde4be83f0a119246d546c9d0"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.3-dev.20260929224124/clonedb-0.1.3-dev.20260929224124-x86_64-apple-darwin.tar.gz"
      sha256 "dd95ac93adac2137347f8b55596d7d127bf851c1d2c3df326f08a0425f1b5ad6"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

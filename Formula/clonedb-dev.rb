class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260702230636"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260702230636/clonedb-0.1.0-dev.20260702230636-aarch64-apple-darwin.tar.gz"
      sha256 "f9fc344729254e9d02b72244aa3c2b862252c746cc433d054f7505f6512bc451"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260702230636/clonedb-0.1.0-dev.20260702230636-x86_64-apple-darwin.tar.gz"
      sha256 "51aa78370152356fd64384af85412a10af88a6ad643bccc9ec37456001b72e7b"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

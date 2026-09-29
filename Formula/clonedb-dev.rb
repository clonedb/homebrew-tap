class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.2-dev.20260929192538"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.2-dev.20260929192538/clonedb-0.1.2-dev.20260929192538-aarch64-apple-darwin.tar.gz"
      sha256 "ae5037aabd89d93d134dff9a4686240715aae0b9b4e0e9a1ccdfa1bf161677ac"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.2-dev.20260929192538/clonedb-0.1.2-dev.20260929192538-x86_64-apple-darwin.tar.gz"
      sha256 "f07d67a7af638307bbee6f137a179571ae87d9b7e48ffd4ac3e1ee4a061d6d1f"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

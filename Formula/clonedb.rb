class Clonedb < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4/clonedb-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "52d96de888610e3456e19ee81958c2742d477a238e565db56c83bab2c37e0e20"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.4/clonedb-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "d0f38879caa7c6bb409cb55df617cd0ed24b3775a2d13686ee30e765df37a997"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

class Clonedb < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0/clonedb-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f33e11660d406399fe81d95488f2e1865619262b26492eece6b2586abea8dce4"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0/clonedb-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "77f4e08b4182df981d3dc0c476b41a476c24ff4a7277dbaaad5e5e933cea9780"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

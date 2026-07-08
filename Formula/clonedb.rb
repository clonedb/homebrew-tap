class Clonedb < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0/clonedb-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "defc80390946da545e60bd0ed24f50775f7cb16663904acd8808291086f1f7b3"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0/clonedb-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9ac49870c4364fa703942225b5523a66c05773573b5ca70d664e176a348f237f"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

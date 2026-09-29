class Clonedb < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.2/clonedb-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ca8de66f541daf3b9b92a7d6e43b4be514151ee72dd59057ec6b64fbf89bfba5"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.2/clonedb-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "44017d30cbddd529d696b5a3956d2c372f90be8677544939aecf3c066d2cfdc9"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

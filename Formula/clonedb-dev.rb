class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260701215221"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701215221/clonedb-0.1.0-dev.20260701215221-aarch64-apple-darwin.tar.gz"
      sha256 "83859abc9c56d7b5f787689b23bebbc157f91269ebcf5c606cd08dbb11880d9f"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701215221/clonedb-0.1.0-dev.20260701215221-x86_64-apple-darwin.tar.gz"
      sha256 "e71a38489e7f49a0975d77e00a743322cae6b95d1d55f1d8f9322ec597755387"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

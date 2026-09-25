class Clonedb < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1/clonedb-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "031d8d182bf7f588d56a8ce4229aceb6a6b2b55aee409914ed099599eea2fbec"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1/clonedb-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "5c481d9de1c635b56081aa2ee83973def00ce425266822a453f9dc02a703a2e7"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

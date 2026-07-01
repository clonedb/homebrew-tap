class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260701183420"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701183420/clonedb-0.1.0-dev.20260701183420-aarch64-apple-darwin.tar.gz"
      sha256 "d35241cc3c2a8a4348b9d8d641ce8c257c5c1d63101b573e0db4fa44e83f558f"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260701183420/clonedb-0.1.0-dev.20260701183420-x86_64-apple-darwin.tar.gz"
      sha256 "a4beedbacd0e212e468687264974fe330f34d2fea3c1c1008375ff4191aa99bb"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

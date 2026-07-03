class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260703040033"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260703040033/clonedb-0.1.0-dev.20260703040033-aarch64-apple-darwin.tar.gz"
      sha256 "5c09596dec2a9a071b81c4f489be217159fc284e3de568351adc68ebe7732f21"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260703040033/clonedb-0.1.0-dev.20260703040033-x86_64-apple-darwin.tar.gz"
      sha256 "7ac5c2277b0cc404fe2878f84e899bd7f08adf9f59f681d755800f2a83f14b3e"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.2-dev.20260929153315"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.2-dev.20260929153315/clonedb-0.1.2-dev.20260929153315-aarch64-apple-darwin.tar.gz"
      sha256 "fff784291eb5f3efa85d4998db31d4b1257d294a714e9ff00dcf1456546fc5a4"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.2-dev.20260929153315/clonedb-0.1.2-dev.20260929153315-x86_64-apple-darwin.tar.gz"
      sha256 "4aa1cd0cc54e818f759988111bd05ae0139a43d47427e9d64e7121d379aea381"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.0-dev.20260709151241"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260709151241/clonedb-0.1.0-dev.20260709151241-aarch64-apple-darwin.tar.gz"
      sha256 "6963345ab28824bab41acccd45ef7cc12c4420597a8be69d6a225d3bbd3032c1"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.0-dev.20260709151241/clonedb-0.1.0-dev.20260709151241-x86_64-apple-darwin.tar.gz"
      sha256 "96388842531b5178e4f6053299ec75c367aac082cbcc4ef84401259da5dd15ea"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

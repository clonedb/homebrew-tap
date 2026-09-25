class ClonedbDev < Formula
  desc "Pull a referentially-complete subset of a PostgreSQL database into a dev/test DB"
  homepage "https://clonedb.dev"
  version "0.1.1-dev.20260925194000"
  license "MIT"
  conflicts_with "clonedb"

  on_macos do
    on_arm do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925194000/clonedb-0.1.1-dev.20260925194000-aarch64-apple-darwin.tar.gz"
      sha256 "0cea95a2e0cdbaab1ff21ba16927400c2facc8e68390ac09be79dcf6443b205f"
    end
    on_intel do
      url "https://github.com/clonedb/homebrew-tap/releases/download/v0.1.1-dev.20260925194000/clonedb-0.1.1-dev.20260925194000-x86_64-apple-darwin.tar.gz"
      sha256 "3479a6fb5c58141952a8e311799078dff899afcd2205f3182504281fbd09f7f2"
    end
  end

  def install
    bin.install "clonedb"
  end

  test do
    system "#{bin}/clonedb", "--version"
  end
end

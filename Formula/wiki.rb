class Wiki < Formula
  desc "Query Wikipedia from the command line with automatic language detection"
  homepage "https://github.com/rscli/wikipedia-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.0/wiki-aarch64-apple-darwin.tar.gz"
      sha256 "e23d8745c831556692ce2ef10cce181b0bb6c744131069ffd8e1b8a009f51681"
    else
      url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.0/wiki-x86_64-apple-darwin.tar.gz"
      sha256 "778e763a33b57ef729d75d1174615e43f104a5a4338873fba66736bbf313d260"
    end
  end

  on_linux do
    url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.0/wiki-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f5bdf246cc62d51c44e10779cff84f71cf9ab14aae8b121c1d16c02c741faeed"
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match "wiki #{version}", shell_output("#{bin}/wiki -V")
  end
end

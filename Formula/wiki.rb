class Wiki < Formula
  desc "Query Wikipedia from the command line with automatic language detection"
  homepage "https://github.com/rscli/wikipedia-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.2/wiki-aarch64-apple-darwin.tar.gz"
      sha256 "303f176b1cb3f310dc1b22f549647e11b1cc405da6083d56678aafc1e8037bc4"
    else
      url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.2/wiki-x86_64-apple-darwin.tar.gz"
      sha256 "07994102de254b4e4bdd2bd8f9ba478b3d4beb61f1e3a9b633d4a3795af1d3aa"
    end
  end

  on_linux do
    url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.2/wiki-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "11327713343578aeefb5496f7bcd7d6c84f0ce1050e04e8a37227c098bcb0d46"
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match "wiki #{version}", shell_output("#{bin}/wiki -V")
  end
end

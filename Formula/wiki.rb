class Wiki < Formula
  desc "Query Wikipedia from the command line with automatic language detection"
  homepage "https://github.com/rscli/wikipedia-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rscli/wikipedia-cli/releases/download/v#{version}/wiki-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/rscli/wikipedia-cli/releases/download/v#{version}/wiki-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/rscli/wikipedia-cli/releases/download/v#{version}/wiki-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match "wiki #{version}", shell_output("#{bin}/wiki -V")
  end
end

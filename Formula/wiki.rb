class Wiki < Formula
  desc "Query Wikipedia from the command line with automatic language detection"
  homepage "https://github.com/rscli/wikipedia-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.1/wiki-aarch64-apple-darwin.tar.gz"
      sha256 "bd6bb253dc29f7d969c61b815d5120f568ad240813b672241d8ad2d98dec75f7"
    else
      url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.1/wiki-x86_64-apple-darwin.tar.gz"
      sha256 "231c06f60a416b52aed0cfbddddb7264c367cbd724d66ec86f22e40c6e31e404"
    end
  end

  on_linux do
    url "https://github.com/rscli/wikipedia-cli/releases/download/v0.1.1/wiki-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "817f3648a56e15f50584e0348700021ca0fa34d4a049657c226b6d0563651f82"
  end

  def install
    bin.install "wiki"
  end

  test do
    assert_match "wiki #{version}", shell_output("#{bin}/wiki -V")
  end
end

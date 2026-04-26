class Clowcard < Formula
  desc "Clow card divination in your terminal"
  homepage "https://github.com/rscli/clowcard"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rscli/clowcard/releases/download/v0.1.0/clowcard-aarch64-apple-darwin.tar.gz"
      sha256 "TBD"
    else
      url "https://github.com/rscli/clowcard/releases/download/v0.1.0/clowcard-x86_64-apple-darwin.tar.gz"
      sha256 "TBD"
    end
  end

  on_linux do
    url "https://github.com/rscli/clowcard/releases/download/v0.1.0/clowcard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "TBD"
  end

  def install
    bin.install "clowcard"
  end

  test do
    assert_match "clowcard", shell_output("#{bin}/clowcard -h")
  end
end

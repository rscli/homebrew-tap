class Clowcard < Formula
  desc "Clow card divination in your terminal"
  homepage "https://github.com/rscli/clowcard"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rscli/clowcard/releases/download/v0.1.0/clowcard-aarch64-apple-darwin.tar.gz"
      sha256 "69d5a275f54e7785698ae873001c316d05d65ce1df1b38951f2e8a0f7120cd84"
    else
      url "https://github.com/rscli/clowcard/releases/download/v0.1.0/clowcard-x86_64-apple-darwin.tar.gz"
      sha256 "3a65197e5fce49b0c6cebc66e5818071f3f3508fc04f5113f71b98e26a52cba6"
    end
  end

  on_linux do
    url "https://github.com/rscli/clowcard/releases/download/v0.1.0/clowcard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "339c78b587f04b7cd204163dff40d28b0f400a1b3f3a649fd375bf4e62c7bea8"
  end

  def install
    bin.install "clowcard"
  end

  test do
    assert_match "clowcard", shell_output("#{bin}/clowcard -h")
  end
end

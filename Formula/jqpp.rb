class Jqpp < Formula
  desc "A robust TUI for interactively exploring JSON with jq-like queries"
  homepage "https://github.com/sukkola/jqpp"
  url "https://github.com/sukkola/jqpp/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "61eb862a19409962c99cdf1a6ba514f3a77e69e94c8e6db9e42a1b0b6c207809"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jqpp", "--version"
  end
end

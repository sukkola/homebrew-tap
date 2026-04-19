class Jqpp < Formula
  desc "A robust TUI for interactively exploring JSON with jq-like queries"
  homepage "https://github.com/sukkola/jqpp"
  url "https://github.com/sukkola/jqpp/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "0c4961c77f1999863f5ebc548d8346552ebd08034596ac24737424acffc5eb54"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jqpp", "--version"
  end
end

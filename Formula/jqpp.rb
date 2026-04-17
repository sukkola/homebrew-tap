class Jqpp < Formula
  desc "A robust TUI for interactively exploring JSON with jq-like queries"
  homepage "https://github.com/sukkola/jqpp"
  url "https://github.com/sukkola/jqpp/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "deef2b0c915ec41578c752927da989ee676b4a8388e64cb851661d330790251a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jqpp", "--version"
  end
end

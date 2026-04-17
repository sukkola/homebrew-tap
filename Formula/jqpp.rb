class Jqpp < Formula
  desc "A robust TUI for interactively exploring JSON with jq-like queries"
  homepage "https://github.com/sukkola/jqpp"
  url "https://github.com/sukkola/jqpp/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "5fd415c691c96d6d76c8a17367be78fd6139876389ff375b72b064f2fca405a3"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/jqpp", "--version"
  end
end

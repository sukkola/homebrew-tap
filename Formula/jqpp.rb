class Jqpp < Formula
  desc "A robust TUI for interactively exploring JSON with jq-like queries"
  homepage "https://github.com/sukkola/jqpp"
  url "https://github.com/sukkola/jqpp/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "e3ee9b165c302fe1201476acb35ea0f4982962de5414228ebdf220d1d864a305"
  version "0.3.3"
  license "MIT"

  depends_on "rust" => :build

  def install
    # Source tarball has no .git; patch version and pass it as the build tag.
    inreplace "Cargo.toml", /^version = ".*"/, "version = \"#{version}\""
    ENV["GIT_SHA"] = version.to_s
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/jqpp --version")
    assert_match version.to_s, output
  end
end

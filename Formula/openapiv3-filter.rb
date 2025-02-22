# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Openapiv3Filter < Formula
  desc "Cli tool for filtering openapi v3 documents"
  homepage ""
  url "https://github.com/sukkola/openapiv3-filter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b72430db2b7c2a25a0f0b2647ac1b505b8bd8ad6780eca27d53baf2369680f77"
  license "NOASSERTION"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/openapiv3-filter --help"
  end
end

class Jqpp < Formula
  desc "A robust TUI for interactively exploring JSON with jq-like queries"
  homepage "https://github.com/sukkola/jqpp"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/sukkola/jqpp/releases/download/v0.1.0/jqpp-aarch64-apple-darwin.tar.gz"
      sha256 "40e55a51b6626a279862dfddce2b0f9c66dcb73c8f6c7b7da4f1d5f69195a829"
    end
    on_intel do
      url "https://github.com/sukkola/jqpp/releases/download/v0.1.0/jqpp-x86_64-apple-darwin.tar.gz"
      sha256 "f89585388b53f3ab06df4f3f9c892dcf9d088df18c4f2f951905261ac7148085"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sukkola/jqpp/releases/download/v0.1.0/jqpp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d86c5fca114df6f809f1fb884d883a1e8487fc6eb6f9181b6acbd776e8082a9"
    end
    on_intel do
      url "https://github.com/sukkola/jqpp/releases/download/v0.1.0/jqpp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f2f2f3d92d9eb522b6a16242685beb1c233177276121d1e44f26c56fe031e79"
    end
  end

  def install
    bin.install "jqpp"
  end

  test do
    system "#{bin}/jqpp", "--version"
  end
end

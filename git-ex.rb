class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.1.4"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.4/git-ex-v0.1.4-x86_64-apple-darwin.tar.gz"
  sha256 "a598f0b12bcd0943238e5d33e9535a43f3a82fd00f086ed2ae6a1c8142eb1d64"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.4/git-ex-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
    sha256 "c766a6aa718634a201ca4705fd7c42bdf9a918e18398d721459c1e4c06c499a9"
  end

  def install
    bin.install "git-ex"
  end
end

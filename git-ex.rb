class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.1.3"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.3/git-ex-v0.1.3-x86_64-apple-darwin.tar.gz"
  sha256 "e6d60d354a1340b28d8fcf2dcee9bff4cc000512d7b608858794fcc2bee9ab6a"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.3/git-ex-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
    sha256 "7bc3c51091a4e8747cca16e9b8ddf7c54cdc497c1bb4704f61d2a38bccf9c90f"
  end

  def install
    bin.install "git-ex"
  end
end

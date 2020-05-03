class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.0.1"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.0.1/git-ex-v0.0.1-x86_64-apple-darwin.tar.gz"
  sha256 "b5d8e11a98b08776a0681ebf9f09c193c861e059dff66530f9335c25005bed3b"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.0.1/git-ex-v0.0.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "02d21e5d7fd00472972f9949a01f7f345ccce30ddc3af0cce2cc2d0b29407940"
  end

  def install
    bin.install "git-ex"
  end
end

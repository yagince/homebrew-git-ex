class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.0.2"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.0.2/git-ex-v0.0.2-x86_64-apple-darwin.tar.gz"
  sha256 "95c5ffa11d7c9caa6e16b1d392cba32f7ed807ca91a6539da3af76020f36739e"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.0.2/git-ex-v0.0.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "960dd299fe4732569b91f4e7206e0b0e6b5f2df10be9946e0dcf351c8210388a"
  end

  def install
    bin.install "git-ex"
  end
end

class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.1.5"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.5/git-ex-v0.1.5-x86_64-apple-darwin.tar.gz"
  sha256 "1dfe4407273633e92b61ed793053755f78fafb38c94879053f6892f5123fd483"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.5/git-ex-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a511833c57b4288efd0532303c6da05dd0d78d62b72cf7830d07b74cff9400bc"
  end

  def install
    bin.install "git-ex"
  end
end

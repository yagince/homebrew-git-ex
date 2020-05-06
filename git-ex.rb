class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.1.2"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.2/git-ex-v0.1.2-x86_64-apple-darwin.tar.gz"
  sha256 "76ec861b2abed49a908d830fecbdd387b974d92fd39bb2ea936ec260d57d02c1"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.2/git-ex-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3b184f72a5a34b39ed02e11b82a8c9cce82d94b089647dd6cf75710f7336a0a1"
  end

  def install
    bin.install "git-ex"
  end
end

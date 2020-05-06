class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "0.1.1"
  url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.1/git-ex-v0.1.1-x86_64-apple-darwin.tar.gz"
  sha256 "6dfe11fc67e4edba88bc1feb6f4ea0609e51efdba6eb76d212a25294a136473c"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/v0.1.1/git-ex-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9c9454843e776755e831000e8918619138943d29d2d5671f22942798c072ae3d"
  end

  def install
    bin.install "git-ex"
  end
end

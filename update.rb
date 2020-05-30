require 'openssl'
require 'open-uri'

version = "v0.1.5"
targets = ["x86_64-apple-darwin", "x86_64-unknown-linux-musl"]

digests = targets.map{|x|
  [x, OpenSSL::Digest::SHA256.hexdigest(URI.parse("https://github.com/yagince/git-ex-rs/releases/download/#{version}/git-ex-#{version}-#{x}.tar.gz").read)]
}.to_h

TEMPLATE = <<EOS
class GitEx < Formula
  desc "A Tui for Git written in Rust"
  homepage "https://github.com/yagince/git-ex-es"
  version "#{version[1..]}"
  url "https://github.com/yagince/git-ex-rs/releases/download/#{version}/git-ex-#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "#{digests[targets[0]]}"

  if OS.linux?
    url "https://github.com/yagince/git-ex-rs/releases/download/#{version}/git-ex-#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "#{digests[targets[1]]}"
  end

  def install
    bin.install "git-ex"
  end
end
EOS

open("git-ex.rb", "w"){ |f| f.puts TEMPLATE }

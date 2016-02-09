# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.0.1.tar.gz"
  version "0.0.1"
  sha256 "8872afea5c2e23f0f9722ad41b9cb888df0e9f5e2994d25b3362e821922b5830"

  depends_on "docker" => :recommended
  depends_on "docker-compose" => :recommended
  depends_on "docker-machine" => :recommended

  def install
    bin.install "devtools"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

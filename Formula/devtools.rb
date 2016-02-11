# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.1.0.tar.gz"
  version "0.1.0"
  sha256 "7f988b7ffaaf35f88383b98bf3cb036146d708fe4c5657d9fc7b4a837729b56e"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

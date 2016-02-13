# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.1.3.tar.gz"
  version "0.1.3"
  sha256 "a77cac78941b7273919548b150c38a877545332ae7cd78be1e7026b15160ce61"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

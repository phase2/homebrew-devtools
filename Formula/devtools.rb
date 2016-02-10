# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.0.2.tar.gz"
  version "0.1.0"
  sha256 "919f9fc12a5b1763fb5424b513a69b2dc3dd8043a459c20bb6a008fb69d71996"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

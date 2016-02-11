# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.1.2.tar.gz"
  version "0.1.2"
  sha256 "a56d67038902a4fa5bda5feb70bca6b85e76b5d8badfefc53e4efe400947ce8b"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

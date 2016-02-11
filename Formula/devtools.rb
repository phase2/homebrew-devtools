# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.1.1.tar.gz"
  version "0.1.1"
  sha256 "f094e19dc8926638486e2d461285106f656b4fe85576d66401087a8b114e55eb"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

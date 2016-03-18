# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula

class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.2.2.tar.gz"
  version "0.2.2"
  sha256 "0efad9e3e8aa2bbbc73d931f70b0725c6d2352f0844a4f4928668ec57656716f"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
    bin.install "docker-machine-watch-rsync.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

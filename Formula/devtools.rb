# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula

class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.2.1.tar.gz"
  version "0.2.1"
  sha256 "95390e1814ef90fed8a40165e993cb89689cb60bf7f8d9a2d460ddc6180a6de6"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
    bin.install "docker-machine-watch-rsync.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

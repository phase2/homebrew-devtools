class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-1.0.1.tar.gz"
  version "1.0.1"
  sha256 "cfa5b61b3e1de18961e9ddefe9f9e30cbec6d545b2b1cc410aec16be3038590b"

  depends_on "docker"
  depends_on "docker-machine"
  depends_on "docker-compose"
  depends_on "docker-machine-nfs"

  def install
    bin.install "devtools"
    bin.install "docker-machine-watch-rsync.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

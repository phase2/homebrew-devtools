class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.3.1.tar.gz"
  version "0.3.1"
  sha256 "b20dc819ba10a1f2d1f628a8dc7c9567083d68eb32e66ae36205b0921b43a04f"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
    bin.install "docker-machine-watch-rsync.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

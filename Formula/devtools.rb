class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.3.0.tar.gz"
  version "0.3.0"
  sha256 "ac0576465d50d2c5f7df3ce03eb1f29b63e722645c1f25aa1a3da3a0700c5b34"

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"
    bin.install "docker-machine-watch-rsync.sh"
  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

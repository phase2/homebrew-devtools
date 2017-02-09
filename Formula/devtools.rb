class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-1.0.5.tar.gz"
  version "1.0.5"
  sha256 "87a7abbe926c3968c81fda875cf762aa462314dfda0e5c6c24ea445581031e81"

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

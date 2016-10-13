class Devtools < Formula
  desc "Containerized platform environment for projects. See https://phase2.github.io/devtools for documentation. "
  homepage "https://phase2.github.com/devtools"
  url "https://s3.amazonaws.com/phase2.devtools/devtools-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "650d62cad5e9a86e64b3999ef83cfca0e96915ba6f6f9051bfe86f6880ae6e1f"

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

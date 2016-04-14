class Docker < Formula
  desc "Pack, ship and run any application as a lightweight container"
  homepage "https://www.docker.com/"

  url "https://get.docker.com/builds/Darwin/x86_64/docker-1.9.1"
  version "1.9.1"
  sha256 "8750ccc2098ec94ef7db110e0016ab02cfa47a1a76f0deb3faa50335b5ec0df9"

  def install
    bin.install "docker-1.9.1"
    mv bin/"docker-1.9.1", bin/"docker"
  end

  test do
    system "#{bin}/docker", "--version"
  end
end

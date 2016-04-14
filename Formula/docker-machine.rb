require "language/go"

class DockerMachine < Formula
  desc "Create Docker hosts locally and on cloud providers"
  homepage "https://docs.docker.com/machine"

  url "https://github.com/docker/machine/releases/download/v0.5.4/docker-machine_darwin-amd64"
  version "0.5.4"
  sha256 "48be67863ed8b90bc4ca7a2214587bcc872f4510352dc85a1eb440dac3507389"

  def install
    bin.install "docker-machine_darwin-amd64"
    mv bin/"docker-machine_darwin-amd64", bin/"docker-machine"
  end

  test do
    system bin/"docker-machine", "ls"
  end
end
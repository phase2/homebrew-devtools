require "language/go"

class DockerMachine < Formula
  desc "Create Docker hosts locally and on cloud providers"
  homepage "https://docs.docker.com/machine"

  url "https://github.com/docker/machine/releases/download/v0.5.4/docker-machine_darwin-amd64"
  version "0.5.4"
  sha256 "c08296e94dae10b50e8360e4dfd23c0e35bc30156ccebb3e63c83bd5dc88c4bb"

  def install
    bin.install "docker-machine_darwin-amd64"
    mv bin/"docker-machine_darwin-amd64", bin/"docker-machine"
  end

  test do
    system bin/"docker-machine", "ls"
  end
end
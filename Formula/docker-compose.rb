class DockerCompose < Formula
  desc "Isolated development environments using Docker"
  homepage "https://docs.docker.com/compose/"

  url "https://github.com/docker/compose/releases/download/1.5.2/docker-compose-Darwin-x86_64"
  version "1.5.2"
  sha256 "6815ae29762450bec438285b60157873be9714922cfb424614d39d1fa24c3500"

  def install
    bin.install "docker-compose-Darwin-x86_64"
    mv bin/"docker-compose-Darwin-x86_64", bin/"docker-compose"
  end

  test do
    assert_match /#{version}/, shell_output(bin/"docker-compose --version")
  end
end

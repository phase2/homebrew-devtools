# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.0.2.tar.gz"
  version "0.0.2"
  sha256 "94a93f2228465a751d758fad1b25c0f4181690b9c13aa4c1219a4c28ac7431c0"

  depends_on "phase2/devtools/docker" => :recommended
  depends_on "phase2/devtools/docker-machine" => :recommended
  depends_on "phase2/devtools/docker-compose" => :recommended

  # On mac generate the sha256 with: shasum -a 256 [FILE]

  # resource "docker" do
  #   url "https://get.docker.com/builds/Darwin/x86_64/docker-1.9.1"
  #   sha256 "8750ccc2098ec94ef7db110e0016ab02cfa47a1a76f0deb3faa50335b5ec0df9"
  #   version "1.9.1"
  # end

  # resource "docker-compose" do
  #   url "https://github.com/docker/compose/releases/download/1.5.2/docker-compose-Darwin-x86_64"
  #   sha256 "6815ae29762450bec438285b60157873be9714922cfb424614d39d1fa24c3500"
  #   version "1.5.2"
  # end

  # resource "docker-compose" do
  #   url "https://github.com/docker/compose/releases/download/1.6.0/docker-compose-Darwin-x86_64"
  #   sha256 "1c0f652a061e32b1acabf1741b255b22702b575ffc6f8e8fae91e9888c96edfc"
  #   version "1.6.0"
  # end

  # resource "docker-machine" do
  #   url "https://github.com/docker/machine/releases/download/v0.5.4/docker-machine_darwin-amd64"
  #   sha256 "48be67863ed8b90bc4ca7a2214587bcc872f4510352dc85a1eb440dac3507389"
  #   version "0.5.4"
  # end

  def install
    bin.install "devtools"
    bin.install "docker-machine-nfs.sh"

    # resource("docker").stage do 
    #   bin.install "docker-1.9.1" 
    #   system "mv", "#{bin}/docker-1.9.1", "#{bin}/docker"
    # end

    # resource("docker-compose").stage do 
    #   bin.install "docker-compose-Darwin-x86_64" 
    #   system "mv", "#{bin}/docker-compose-Darwin-x86_64", "#{bin}/docker-compose"
    # end

    # resource("docker-machine").stage do 
    #   bin.install "docker-machine_darwin-amd64" 
    #   system "mv", "#{bin}/docker-machine_darwin-amd64", "#{bin}/docker-machine"
    # end

  end

  test do
    system "#{bin}/devtools", "--version"
  end
end

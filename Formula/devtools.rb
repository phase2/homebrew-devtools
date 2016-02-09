# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Devtools < Formula
  desc "Containerized platform environment for projects"
  homepage ""
  url "https://s3.amazonaws.com/phase2.devtools/devtools-0.0.1.tar.gz"
  version "0.0.1"
  sha256 "8872afea5c2e23f0f9722ad41b9cb888df0e9f5e2994d25b3362e821922b5830"

  # depends_on "cmake" => :build
  depends_on "docker" => :recommended
  depends_on "docker-compose" => :recommended
  depends_on "docker-machine" => :recommended

  def install
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test devtools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

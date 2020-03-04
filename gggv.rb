class Gggv < Formula
  url "https://github.com/dianelooney/gggv.git", :revision => ENV["HOMEBREW_GGGV_REVISION"]

  desc "Go Go Gadget: Video"
  homepage "https://github.com/dianelooney/gggv"
  version "0.0.1"
  sha256 ""

  depends_on "glfw"
  depends_on "golang" => "1.13"
  depends_on "ffmpeg"
  depends_on "pkg-config"
  depends_on "portaudio"
  depends_on "linuxbrew/xorg/libglvnd" unless OS.mac?

  def install
    system "go get -d ./..."
    system "CGO_CFLAGS=-w go build -o=bin/gggv cmd/daemon/gggv.go"
    bin.install Dir["bin/gggv"]
  end
end

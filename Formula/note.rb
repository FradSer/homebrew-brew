class Note < Formula
  desc "CLI tool for managing Apple Notes with Cloudflare D1 sync"
  homepage "https://github.com/FradSer/note"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-darwin-arm64.tar.gz"
      sha256 "45e0698602d4efe80e1c6e4e0abcaaeacb36a39b1400a2b184c93ccf9023b699"
    else
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-darwin-amd64.tar.gz"
      sha256 "6338b966f31111ff22ab2704cb6e6086b8ff0dc24b4946d91fa33f94e644dd5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-linux-arm64.tar.gz"
      sha256 "528b769a0b12feabda03f9b0a972c59d0eb76a296f929860cdfe91a4c1dc6398"
    else
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-linux-amd64.tar.gz"
      sha256 "7ea77a02f11325a66dc2624afc989ba204fa0532f8c3b770c213957329e5e9fe"
    end
  end

  def install
    bin.install "note"
  end

  test do
    system "#{bin}/note", "--help"
  end
end

class Note < Formula
  desc "CLI tool for managing Apple Notes with Cloudflare D1 sync"
  homepage "https://github.com/FradSer/note"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.2.0/note-darwin-arm64.tar.gz"
      sha256 "618e4ba64bad4a1ad9de7e17f27de16d0695b4c332346f8a9186daf33f46f8f8"
    else
      url "https://github.com/FradSer/note/releases/download/v0.2.0/note-darwin-amd64.tar.gz"
      sha256 "3c8519adfef22c50fa223a38a073809f7e919d609b2cc538c3d79eb136ce75a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.2.0/note-linux-arm64.tar.gz"
      sha256 "c16367137c1186285f8033509e3c2921755e94e2bad997bdb4393cb5a4856d39"
    else
      url "https://github.com/FradSer/note/releases/download/v0.2.0/note-linux-amd64.tar.gz"
      sha256 "2fd78d5794af47b9e2fd4787140cd73088040c781d3fda421f202d309dee4f52"
    end
  end

  def install
    bin.install "note"
  end

  test do
    system "#{bin}/note", "--help"
  end
end

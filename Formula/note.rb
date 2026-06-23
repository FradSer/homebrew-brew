class Note < Formula
  desc "CLI tool for managing Apple Notes with Cloudflare D1 sync"
  homepage "https://github.com/FradSer/note"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-darwin-arm64.tar.gz"
      sha256 "0dd3aecfa2cd0dea21c7b6678170572a97d36608ed28e20ccf2da1a177986d7e"
    else
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-darwin-amd64.tar.gz"
      sha256 "745a1eb70374172d354b9039b75c97251c5600d269453067ce4ea470e933f3b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-linux-arm64.tar.gz"
      sha256 "1e8277ce2e9623ecc6665249b02022a3163fcb0fe09d6b35e2f93e9a52f5ae56"
    else
      url "https://github.com/FradSer/note/releases/download/v0.1.0/note-linux-amd64.tar.gz"
      sha256 "1ba69f7570d26010ed2347b564a5b96a03b948489f410cef7c11d8a7a63815b1"
    end
  end

  def install
    bin.install "note"
  end

  test do
    system "#{bin}/note", "--help"
  end
end

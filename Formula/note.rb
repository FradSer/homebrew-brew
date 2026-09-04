class Note < Formula
  desc "CLI tool for managing Apple Notes with Cloudflare D1 sync"
  homepage "https://github.com/FradSer/note"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.3.2/note-darwin-arm64.tar.gz"
      sha256 "1f989e576df6ecdd6ebb1a813fd1e034f5b907e47232c05a3c9a11a426a2708d"
    else
      url "https://github.com/FradSer/note/releases/download/v0.3.2/note-darwin-amd64.tar.gz"
      sha256 "7ce8e91a4eec4c1b78e29a4036b1bb0d38d8758c2fdd814a9d09cdbe6090391e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/note/releases/download/v0.3.2/note-linux-arm64.tar.gz"
      sha256 "fa1ea79f93872c3ff76cde9ed1d721facdb4e44d85fdd045ab66e824fe1c1b47"
    else
      url "https://github.com/FradSer/note/releases/download/v0.3.2/note-linux-amd64.tar.gz"
      sha256 "54be3f7b2315abdb6b68a19de6dc7c718688a73625108639824a346eb60b8116"
    end
  end

  def install
    bin.install "note"
  end

  test do
    system "#{bin}/note", "--help"
  end
end

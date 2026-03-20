class GitAgent < Formula
  desc "AI-powered git commit agent"
  homepage "https://github.com/FradSer/git-agent-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-darwin-arm64.tar.gz"
      sha256 "7057e3a096fda458c4d05eabc992b761bd367f784c3008387a5754c2518e8af6"
    else
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-darwin-amd64.tar.gz"
      sha256 "6f15fa29c2efd1aa74ecd670f79aeb34bb67db634ec040f076213a66e1573cef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-linux-arm64.tar.gz"
      sha256 "310eb07a66038684b53ced631313562f091316f0be71ef1411db5a6d1999878c"
    else
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-linux-amd64.tar.gz"
      sha256 "264128401ece083243bb79cc823d52269974c9981f5926999d86bca354e995d6"
    end
  end

  def install
    bin.install "git-agent"
  end

  test do
    system "#{bin}/git-agent", "--help"
  end
end

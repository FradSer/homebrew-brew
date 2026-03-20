class GitAgent < Formula
  desc "AI-powered git commit agent"
  homepage "https://github.com/FradSer/git-agent-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-darwin-arm64.tar.gz"
      sha256 "364a9ab092be521f7e153ec3a0b694fb9adaa214389dfdd45f25cc7675d0d08e"
    else
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-darwin-amd64.tar.gz"
      sha256 "7b9d4c1cd1a108f10c4c78ad96a879f60ec7721eeb01ac296d0f4cf5d218a03b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-linux-arm64.tar.gz"
      sha256 "dba59594fb142d560855c227a399c1bfec625f38fe61dbe5957bb96e9eb81ef2"
    else
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-linux-amd64.tar.gz"
      sha256 "2e78f334e03a5901e256abdb26a622c21b376e91e8f935076810349078759519"
    end
  end

  def install
    bin.install "git-agent"
  end

  test do
    system "#{bin}/git-agent", "--help"
  end
end

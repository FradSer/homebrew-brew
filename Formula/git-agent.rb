class GitAgent < Formula
  desc "AI-powered git commit agent"
  homepage "https://github.com/FradSer/ga-cli"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/ga-cli/releases/download/v#{version}/git-agent-darwin-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/FradSer/ga-cli/releases/download/v#{version}/git-agent-darwin-amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/ga-cli/releases/download/v#{version}/git-agent-linux-arm64.tar.gz"
      sha256 ""
    else
      url "https://github.com/FradSer/ga-cli/releases/download/v#{version}/git-agent-linux-amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "git-agent"
  end

  test do
    system "#{bin}/git-agent", "--help"
  end
end

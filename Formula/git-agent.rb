class GitAgent < Formula
  desc "AI-powered git commit agent"
  homepage "https://github.com/FradSer/git-agent-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-darwin-arm64.tar.gz"
      sha256 "adf12afa3cdbf7fa1d4289b3664a417629dff374f5100fec2e0e79715eeb4b24"
    else
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-darwin-amd64.tar.gz"
      sha256 "28f718549dec59df836a598aac53cc7109e84430b193d59edd52c7edb1c94bdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-linux-arm64.tar.gz"
      sha256 "ef6cbe522b4ed06c8bfdf06861a52e440bf057ee183bba86714d001574355a70"
    else
      url "https://github.com/FradSer/git-agent-cli/releases/download/v0.1.0/git-agent-linux-amd64.tar.gz"
      sha256 "f954bc67387fd8812b0da5edd3a3c50b05fdbb66887c439c4be3d57005c384f3"
    end
  end

  def install
    bin.install "git-agent"
  end

  test do
    system "#{bin}/git-agent", "--help"
  end
end

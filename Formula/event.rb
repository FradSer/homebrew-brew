class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.9.0/event-darwin-arm64.tar.gz"
      sha256 "67a224434ae1c5b5fc714402bd08f47a3dae65436f51f98c217994bb5d58507e"
    else
      url "https://github.com/FradSer/event/releases/download/v0.9.0/event-darwin-amd64.tar.gz"
      sha256 "36815ddfc8e4c25356ae79cfee7429f36016602fb7633d44934581cce71a06c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.9.0/event-linux-arm64.tar.gz"
      sha256 "574759889a8dae39fc7d957977c3aab33489388d4f947585d33c57d1907adba7"
    else
      url "https://github.com/FradSer/event/releases/download/v0.9.0/event-linux-amd64.tar.gz"
      sha256 "92e2d658748bd9a119461e3ad172006ed21275a1db1226ef20f2c26381020c71"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

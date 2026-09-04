class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.7.0/event-darwin-arm64.tar.gz"
      sha256 "e2c36e758143c06a1d4c1c11367aa8857196a96b71122dc3fe17a36bd82324f4"
    else
      url "https://github.com/FradSer/event/releases/download/v0.7.0/event-darwin-amd64.tar.gz"
      sha256 "f76fd84fe029fc04ee3c9282e64d1c61638631c59107a7bd94da63e76ba459f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.7.0/event-linux-arm64.tar.gz"
      sha256 "84e47a92068b2982679324684a32d6179c58a335dcb544b5f0ef33c122947e57"
    else
      url "https://github.com/FradSer/event/releases/download/v0.7.0/event-linux-amd64.tar.gz"
      sha256 "5a94709325d008108366d3803655aaac9557b27c5e272b641704dbd786bb50ed"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

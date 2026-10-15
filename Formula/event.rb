class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.8.0/event-darwin-arm64.tar.gz"
      sha256 "2b8a78368a7db21f75645d679e81acb8add2b48173da21d0fa1716c0122e2826"
    else
      url "https://github.com/FradSer/event/releases/download/v0.8.0/event-darwin-amd64.tar.gz"
      sha256 "c8a38d001fe2789c25d638def0db35b7ab766e8eed849e53f791f394b92e86b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.8.0/event-linux-arm64.tar.gz"
      sha256 "77d1c55695b36c3bec2dfd3e9089ab97d67b82344aeac40a15cc8e802a7b0039"
    else
      url "https://github.com/FradSer/event/releases/download/v0.8.0/event-linux-amd64.tar.gz"
      sha256 "1e123db0de3df1043cd5248794f908348ded4968d16a96c24095952c08aefb5b"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

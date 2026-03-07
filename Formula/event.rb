class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  url "https://github.com/FradSer/event/releases/download/v0.1.0/event--arm64.tar.gz"
  sha256 "ffab8f970bfb313d6b333cdcdeda04cf294dedeae3311f6e8b792623f9837754"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

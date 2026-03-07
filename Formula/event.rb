class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  url "https://github.com/FradSer/event/releases/download/v0.1.0/event-macos.zip"
  sha256 "00b1dc21866ae0d331b7c51e130b6c7eb00f0ddf531f8c048f047430e50eeed2"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "archive/event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

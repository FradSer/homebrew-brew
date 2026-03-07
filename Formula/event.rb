class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  url "https://github.com/FradSer/event/releases/download/v0.1.0/event-macos.zip"
  sha256 "7cf0109a6487d12f860d079021d8686a2a9724b8e702a97720cf1b7caf0f5f80"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

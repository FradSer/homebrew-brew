class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  url "https://github.com/FradSer/event/releases/download/v0.2.0/event-macos.zip"
  sha256 "0ae2462bf0d7605ceb1eceb6a39f5b2899e7cb1e6917387a1186c4328d71bd3d"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

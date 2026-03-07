class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  url "https://github.com/FradSer/event/releases/download/v0.1.1/event-macos.zip"
  sha256 "96d08cfab951f9e5fe1e49df2afd57a7c4156406800072a0abc6de6be1c0e293"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

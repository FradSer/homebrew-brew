class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.3.0/event-darwin-arm64.tar.gz"
      sha256 "55743ff1153cb2a2a188ce74c7531673f6c381560ea826ef5526dce4385bd00f"
    else
      url "https://github.com/FradSer/event/releases/download/v0.3.0/event-darwin-amd64.tar.gz"
      sha256 "67cd819b73f45ed23ab8b95d31ef76bb9777ac3671815333768d344bac70d09f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.3.0/event-linux-arm64.tar.gz"
      sha256 "b236ca555cbfd1d704d30bab81aa368e85aaaf9e44719c3d1ac68270c1079680"
    else
      url "https://github.com/FradSer/event/releases/download/v0.3.0/event-linux-amd64.tar.gz"
      sha256 "a483308dc6d04f69797e58dcfa5037acf6748a875a746f33b07a2808cf2ce330"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

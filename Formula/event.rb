class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.5.0/event-darwin-arm64.tar.gz"
      sha256 "71dc8ed243dbfed32ee4bea91baf90844d17f28f26ff4c88f989ef52b0117f75"
    else
      url "https://github.com/FradSer/event/releases/download/v0.5.0/event-darwin-amd64.tar.gz"
      sha256 "a3cd8c4c2633a52615f6a036b8ea6aa9213330cd0d769f9c667f97a5659dbb34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.5.0/event-linux-arm64.tar.gz"
      sha256 "55068be1c8e94f8570e6c5f203393629d8d48a74ef2bc2f3109eaa95f62c117d"
    else
      url "https://github.com/FradSer/event/releases/download/v0.5.0/event-linux-amd64.tar.gz"
      sha256 "212a232af6ec1b079fed8396cd66f8cd909b8f0935002024f645296658b43fb6"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

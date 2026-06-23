class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.4.0/event-darwin-arm64.tar.gz"
      sha256 "cc3007f4626f8a4d306ef2fad7b82012debecd5e384a1a961e69be6cacda3517"
    else
      url "https://github.com/FradSer/event/releases/download/v0.4.0/event-darwin-amd64.tar.gz"
      sha256 "48e3ca049475a2f8877529cc1863ccf0e8030ea141549cdf7bdbb8be0dd9b027"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.4.0/event-linux-arm64.tar.gz"
      sha256 "5c3d1772fee9a39b178eb73f120a1fd98d1ac0241c73f329f893809099c40e46"
    else
      url "https://github.com/FradSer/event/releases/download/v0.4.0/event-linux-amd64.tar.gz"
      sha256 "3ca549768723624de8723ee075c6f40d5b78428dc545607e871fc5fb372ac1c8"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

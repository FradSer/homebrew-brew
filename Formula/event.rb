class Event < Formula
  desc "CLI tool for managing Apple Reminders and Calendar via EventKit"
  homepage "https://github.com/FradSer/event"
  version "0.0.0-test"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.0.0-test/event-darwin-arm64.tar.gz"
      sha256 "80e1fed49ba911f19abe9e11dfb400065a96c5166a840ada39d24f14cfc06df0"
    else
      url "https://github.com/FradSer/event/releases/download/v0.0.0-test/event-darwin-amd64.tar.gz"
      sha256 "8104e75ba57fdaf363aa9df91aff08df28cb3424248d1bf3be7f03b53a5b93dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FradSer/event/releases/download/v0.0.0-test/event-linux-arm64.tar.gz"
      sha256 "3ee909df3cfac1e556f13f99c7f2f3094a7f1e3b95a98c811eec3acd123d958e"
    else
      url "https://github.com/FradSer/event/releases/download/v0.0.0-test/event-linux-amd64.tar.gz"
      sha256 "bc68e32edbdc3a604e9d77402c8ff5ead8470f6e73047ad599ec71a2bec7bc9d"
    end
  end

  def install
    bin.install "event"
  end

  test do
    system "#{bin}/event", "--help"
  end
end

class Evalcache < Formula
  desc "Cache the output of binary initialization commands to speed up shell startup"
  homepage "https://github.com/mroth/evalcache"
  url "https://github.com/mroth/evalcache/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "0ad981b49429c339f2679e508699e74f94ebbdd8eedd67c52a5977478a6397c0"
  version "1.0.3"
  license "MIT"

  def install
    pkgshare.install "evalcache.plugin.zsh"
    pkgshare.install "README.md"
    pkgshare.install "LICENSE"
  end

  def caveats
    <<~EOS
      To activate evalcache, add the following to your .zshrc:

        source #{HOMEBREW_PREFIX}/share/evalcache/evalcache.plugin.zsh

      You will also need to restart your terminal for this change to take effect.

      Usage example:
        _evalcache rbenv init -
        _evalcache hub alias -s

      To clear the cache:
        _evalcache_clear
    EOS
  end

  test do
    assert_match "_evalcache", (pkgshare/"evalcache.plugin.zsh").read
  end
end

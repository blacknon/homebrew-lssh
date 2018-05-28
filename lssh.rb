class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.4.3/lssh_0.4.3_darwin_amd64.tar.gz"
    sha256 "a99819c1dece6774e1af0804fe3787eec1eb6d64b89104d8829eb2c0e6dc1d99"
  end
  def install
    bin.install Dir['lssh','lscp']
    system "pwd"
    system "ls -la"
    system "echo $HOME"
    system "whoami"
    system "eval echo ~$USER"
    system "cp -n ./.lssh.conf $(eval echo ~$USER)/.lssh.conf || true"
  end
  test do
    system "#{bin}/lssh"
    system "#{bin}/lscp"
  end
end

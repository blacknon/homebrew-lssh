class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.5.5/lssh_0.5.5_darwin_amd64.tar.gz"
    sha256 "4f0f17fe8b166165525ea78cbaa650f9de776fc13136ae11b8686bdb"
  end
  def install
    bin.install Dir['lssh','lscp']
    zsh_completion.install "misc/completions/zsh/_lssh"
    zsh_completion.install "misc/completions/zsh/_lscp"
  end
  test do
    system "#{bin}/lssh"
    system "#{bin}/lscp"
  end
end

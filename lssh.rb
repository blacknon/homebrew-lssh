class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.6.0/lssh_0.6.0_darwin_amd64.tar.gz"
    sha256 "74e817af0ad95af4a5f6d64755017983bfa6da20d8c2b730c008133ac8e8c231"
  end
  def install
    bin.install Dir['lssh','lscp','lsftp']
    zsh_completion.install "zsh/_lssh"
  end
  test do
    system "#{bin}/lssh"
    system "#{bin}/lscp"
    system "#{bin}/lsftp"
  end
end

class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.6.4/lssh_0.6.4_darwin_amd64.tar.gz"
    sha256 "46d74c6f00689d4e44aa6b3adeae2e95ab230548077458b99f8379ca4c944e32"
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

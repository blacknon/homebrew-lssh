class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.5.4/lssh_0.5.4_darwin_amd64.tar.gz"
    sha256 "5b58a4d0e32c10ddd8f5b5ae86365081805c5acf774ba6c41104adfc07cb96c0"
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

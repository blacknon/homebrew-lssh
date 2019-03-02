class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.5.2/lssh_0.5.2_darwin_amd64.tar.gz"
    sha256 "8096095bedd16014d14be6474a35f010172c33387c491e9ac5757d99219eb505"
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

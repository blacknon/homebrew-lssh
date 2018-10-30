class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.5.1/lssh_0.5.1_darwin_amd64.tar.gz"
    sha256 "a36eb785c16305efef019258cfe65effa48102e9072d8289ffc1ce18aae27297"
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

class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.5.5/lssh_0.5.5_darwin_amd64.tar.gz"
    sha256 "c90fe09d7494fbd4ebec3663c1a5e76172a183ccf3d3728d708312185317a3ac"
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

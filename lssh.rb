class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  if OS.mac?
    url "https://github.com/blacknon/lssh/releases/download/v0.4.2/lssh_0.4.2_darwin_amd64.tar.gz"
    sha256 "33a5ae449b55b2a28202571077852bb34f16ce2e4c909aedf6b9d4fb44e4c2d7"
  end
  def install
    bin.install Dir['lssh']
  end
  postflight do
    system_command 'echo',
        args:["$HOME"]
  end

  test do
    system "#{bin}/lssh"
  end
end

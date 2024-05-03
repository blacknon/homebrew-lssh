class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  version 0.6.8

  # MacOS & Apple Silicon CPU
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "3b2f46864f5d6624bc7a76f2f4d60939d4fc32ec0b49776f9d5735f672289df6"
  end

  # MacOS & Intel CPU
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "74d8840a32f72057596e8248514fcd1f4ea6260912b99c1616fa62140cb271b3"
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

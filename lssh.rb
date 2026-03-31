class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  version 0.6.14

  # MacOS & Apple Silicon CPU
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "3349b7d43fb1abee0c58907e846d3a1b4a3733f08da6bd169ad62052a3cf8669"
  end

  # MacOS & Intel CPU
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "39a2029a90e677e2f63396eaf49e41acf23dc2012112af293afbad6b07e64b11"
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

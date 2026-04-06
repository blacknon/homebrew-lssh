class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  version "0.7.1"

  conflicts_with "lssh-core", because: "both install the lssh binary"
  conflicts_with "lssh-transfer", because: "both install the lscp and lsftp binaries"
  conflicts_with "lssh-monitor", because: "both install the lsmon binary"
  conflicts_with "lssh-sysadmin", because: "both install the lsshell binary"

  # MacOS & Apple Silicon CPU
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "abe314535f99fb1c95b0fa95fe6371d99db8fa3b972130171fc4527d1d3fc69a"
  end

  # MacOS & Intel CPU
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "3ad68f31e6dedd38e908ecbbd1ea23edc15f093b8a18ddfd76dc701b51cfe158"
  end

  def install
    bin.install Dir["bin/*"]
    zsh_completion.install Dir["completion/zsh/_*"]
  end

  test do
    system "#{bin}/lssh"
    system "#{bin}/lscp"
    system "#{bin}/lsftp"
    system "#{bin}/lsmon"
    system "#{bin}/lsshell"
  end
end

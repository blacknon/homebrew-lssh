class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh-core", because: "both install the lssh binary"
  conflicts_with "lssh-transfer", because: "both install the lscp, lsftp, lsdiff, lsshfs, and lssync binaries"
  conflicts_with "lssh-monitor", because: "both install the lsmon binary"
  conflicts_with "lssh-sysadmin", because: "both install the lsshell, lsmux, and lspipe binaries"
  conflicts_with "lssh-complete", because: "both install the lssh suite command binaries"

  # MacOS & Apple Silicon CPU
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "c8b7e8aa15bf1a39a9ca0fda5c1790a9754e00cf37ae58f119de0ec0c39e909b"
  end

  # MacOS & Intel CPU
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "db3453cbc8aaf0c1b2f18825cc66c42cef6f8143103c36c9f0e0551b758954c5"
  end

  def install
    bin.install Dir["bin/*"]
    bash_completion.install Dir["completion/bash/*"]
    zsh_completion.install Dir["completion/zsh/_*"]
    fish_completion.install Dir["completion/fish/*.fish"]
  end

  test do
    system "#{bin}/lssh"
    system "#{bin}/lsdiff"
    system "#{bin}/lscp"
    system "#{bin}/lsftp"
    system "#{bin}/lsmux"
    system "#{bin}/lsmon"
    system "#{bin}/lspipe"
    system "#{bin}/lsshfs"
    system "#{bin}/lssync"
    system "#{bin}/lsshell"
  end
end

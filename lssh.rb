class Lssh < Formula
  desc "List select formula ssh wrapper for terminal UI"
  homepage "https://github.com/blacknon/lssh"
  version "0.9.0"

  conflicts_with "lssh-core", because: "both install the lssh binary"
  conflicts_with "lssh-transfer", because: "both install the lscp, lsftp, lsdiff, lsshfs, and lssync binaries"
  conflicts_with "lssh-monitor", because: "both install the lsmon binary"
  conflicts_with "lssh-sysadmin", because: "both install the lsshell, lsmux, and lspipe binaries"

  # MacOS & Apple Silicon CPU
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "93a48e3b8a26d776a58fb857d722e9db05af5c37e81203dc33ea16db7d53f609"
  end

  # MacOS & Intel CPU
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "aef9ff6edc31f14286877f48748688f968ccee2e76efa20340b5d44d203ffd64"
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

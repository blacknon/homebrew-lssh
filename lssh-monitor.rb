class LsshMonitor < Formula
  desc "Monitor binary for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh", because: "both install the lsmon binary"
  conflicts_with "lssh-complete", because: "both install the lsmon binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-monitor_#{version}_darwin_arm64.tar.gz"
    sha256 "0d944e79eb6aaa5527f5cadca473928e4f3afdc20c7d2d7e55a425f2f6545a65"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-monitor_#{version}_darwin_amd64.tar.gz"
    sha256 "312baf03f92879268ad43936adb82c36ba7b738e2dbcc02aca7872d4cf747dd9"
  end

  def install
    bin.install "bin/lsmon"
    bash_completion.install "completion/bash/lsmon"
    zsh_completion.install "completion/zsh/_lsmon"
    fish_completion.install "completion/fish/lsmon.fish"
  end

  test do
    system "#{bin}/lsmon"
  end
end

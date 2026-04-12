class LsshMonitor < Formula
  desc "Monitor binary for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.9.0"

  conflicts_with "lssh", because: "both install the lsmon binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-monitor_#{version}_darwin_arm64.tar.gz"
    sha256 "3bd2bac799c49de50df00733bd82cd89a13ca8f789d6fce383b27e63c88d843c"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-monitor_#{version}_darwin_amd64.tar.gz"
    sha256 "136cd545a5273a1d787fb5fd9fb4a5d8ca1d5f87ea52248a02ba02fafc603e1c"
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

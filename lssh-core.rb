class LsshCore < Formula
  desc "Core lssh binary"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh", because: "both install the lssh binary"
  conflicts_with "lssh-complete", because: "both install the lssh binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-core_#{version}_darwin_arm64.tar.gz"
    sha256 "8d3b7d51fc0dbc1d0609b0615ba943a615a299427b0d4421ab7972aea046a44e"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-core_#{version}_darwin_amd64.tar.gz"
    sha256 "7be9b0056d5ccdc8ee17971790b3f725863d7612d2bf30ee5ba41852a4042177"
  end

  def install
    bin.install "bin/lssh"
    bash_completion.install "completion/bash/lssh"
    zsh_completion.install "completion/zsh/_lssh"
    fish_completion.install "completion/fish/lssh.fish"
  end

  test do
    system "#{bin}/lssh"
  end
end

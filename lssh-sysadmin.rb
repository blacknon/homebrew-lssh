class LsshSysadmin < Formula
  desc "Sysadmin and multiplexer binaries for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.9.0"

  conflicts_with "lssh", because: "both install the lsshell, lsmux, and lspipe binaries"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-sysadmin_#{version}_darwin_arm64.tar.gz"
    sha256 "2e80ea8eb03cf438a7ed0e552289021d0396eab549c06ad3291b1ec5015ac9a2"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-sysadmin_#{version}_darwin_amd64.tar.gz"
    sha256 "214dbdbd80ce424026f2205accf46801677023f0b56070a7672a7f6739df56f3"
  end

  def install
    bin.install "bin/lsmux", "bin/lspipe", "bin/lsshell"
    bash_completion.install "completion/bash/lsmux", "completion/bash/lspipe", "completion/bash/lsshell"
    zsh_completion.install "completion/zsh/_lsmux", "completion/zsh/_lspipe", "completion/zsh/_lsshell"
    fish_completion.install "completion/fish/lsmux.fish", "completion/fish/lspipe.fish", "completion/fish/lsshell.fish"
  end

  test do
    system "#{bin}/lsmux"
    system "#{bin}/lspipe"
    system "#{bin}/lsshell"
  end
end

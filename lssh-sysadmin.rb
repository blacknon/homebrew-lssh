class LsshSysadmin < Formula
  desc "Sysadmin and multiplexer binaries for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh", because: "both install the lsshell, lsmux, and lspipe binaries"
  conflicts_with "lssh-complete", because: "both install the lsshell, lsmux, and lspipe binaries"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-sysadmin_#{version}_darwin_arm64.tar.gz"
    sha256 "e8438b1fc37901203380ed932761f1182bdb6c540d1239c8070c98fc3db755c0"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-sysadmin_#{version}_darwin_amd64.tar.gz"
    sha256 "7b88d5cdec8f8b6ad20b68c6f1ad165febc1f6b2a135e1f1813692cb77c0c958"
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

class LsshTransfer < Formula
  desc "Transfer, diff, mount, and sync binaries for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.9.0"

  conflicts_with "lssh", because: "both install the lscp, lsftp, lsdiff, lsshfs, and lssync binaries"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-transfer_#{version}_darwin_arm64.tar.gz"
    sha256 "86577243377edcdec872893a18a4f2f60be5039147094d7e89b7c495c098382b"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-transfer_#{version}_darwin_amd64.tar.gz"
    sha256 "a8c00bd9ed8f8e61feba3148d035f17305dfa158175a8f1278b835d01a2db3c0"
  end

  def install
    bin.install "bin/lsdiff", "bin/lscp", "bin/lsftp", "bin/lsshfs", "bin/lssync"
    bash_completion.install "completion/bash/lsdiff", "completion/bash/lscp", "completion/bash/lsftp", "completion/bash/lsshfs", "completion/bash/lssync"
    zsh_completion.install "completion/zsh/_lsdiff", "completion/zsh/_lscp", "completion/zsh/_lsftp", "completion/zsh/_lsshfs", "completion/zsh/_lssync"
    fish_completion.install "completion/fish/lsdiff.fish", "completion/fish/lscp.fish", "completion/fish/lsftp.fish", "completion/fish/lsshfs.fish", "completion/fish/lssync.fish"
  end

  test do
    system "#{bin}/lsdiff"
    system "#{bin}/lscp"
    system "#{bin}/lsftp"
    system "#{bin}/lsshfs"
    system "#{bin}/lssync"
  end
end

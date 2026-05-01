class LsshTransfer < Formula
  desc "Transfer, diff, mount, and sync binaries for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh", because: "both install the lscp, lsftp, lsdiff, lsshfs, and lssync binaries"
  conflicts_with "lssh-complete", because: "both install the lscp, lsftp, lsdiff, lsshfs, and lssync binaries"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-transfer_#{version}_darwin_arm64.tar.gz"
    sha256 "22546261f09dffd690f8a7389397ca8f4ce5a39be6246546f062065eaf1c4f2d"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-transfer_#{version}_darwin_amd64.tar.gz"
    sha256 "e4e3a2ce6d07e19c60a2310a06fb8c1e3d9bb2bcfe57a91c3bdefd1061f6a8f4"
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

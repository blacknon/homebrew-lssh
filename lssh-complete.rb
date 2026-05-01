class LsshComplete < Formula
  desc "Full lssh suite with bundled provider executables"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh", because: "both install the lssh suite command binaries"
  conflicts_with "lssh-core", because: "both install the lssh binary"
  conflicts_with "lssh-transfer", because: "both install the lscp, lsftp, lsdiff, lsshfs, and lssync binaries"
  conflicts_with "lssh-monitor", because: "both install the lsmon binary"
  conflicts_with "lssh-sysadmin", because: "both install the lsshell, lsmux, and lspipe binaries"
  conflicts_with "lssh-providers", because: "both install the bundled lssh provider executables"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-complete_#{version}_darwin_arm64.tar.gz"
    sha256 "9ff55a081278d7367d6eaa4f8da8677c1fd193ca381ae3c7e83282eb75467c60"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-complete_#{version}_darwin_amd64.tar.gz"
    sha256 "113747ee65091235b74cacea0ed6458219c9414ce88ff365494d69d6d66f0d76"
  end

  def install
    bin.install Dir["bin/*"]
    bash_completion.install Dir["completion/bash/*"]
    zsh_completion.install Dir["completion/zsh/_*"]
    fish_completion.install Dir["completion/fish/*.fish"]
    (libexec/"providers").install Dir["providers/*"]
    bin.install_symlink Dir[libexec/"providers/*"]
  end

  def caveats
    <<~EOS
      Bundled providers are installed under:
        #{opt_libexec}/providers

      Symlinks are also created in:
        #{opt_bin}
    EOS
  end

  test do
    system "#{bin}/lssh"
    output = shell_output("#{bin}/provider-connector-openssh 2>&1", 1)
    assert_match "unexpected end of JSON input", output
  end
end

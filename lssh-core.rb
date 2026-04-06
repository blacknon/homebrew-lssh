class LsshCore < Formula
  desc "Core lssh binary"
  homepage "https://github.com/blacknon/lssh"
  version "0.7.1"

  conflicts_with "lssh", because: "both install the lssh binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "abe314535f99fb1c95b0fa95fe6371d99db8fa3b972130171fc4527d1d3fc69a"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "3ad68f31e6dedd38e908ecbbd1ea23edc15f093b8a18ddfd76dc701b51cfe158"
  end

  def install
    bin.install "bin/lssh"
    zsh_completion.install "completion/zsh/_lssh"
  end

  test do
    system "#{bin}/lssh"
  end
end

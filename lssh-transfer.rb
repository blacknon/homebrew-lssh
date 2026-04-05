class LsshTransfer < Formula
  desc "Transfer binaries for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.7.0"

  conflicts_with "lssh", because: "both install the lscp and lsftp binaries"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_arm64.tar.gz"
    sha256 "e0238e6f8b90c05a106de9ba273be5b0c5acfc317a4825c091d94563206d251b"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh_#{version}_darwin_amd64.tar.gz"
    sha256 "d0c0f0b266ce6b68ba05506ccacf0b96041ee331242059c454594a44ab235029"
  end

  def install
    bin.install "bin/lscp", "bin/lsftp"
    zsh_completion.install "completion/zsh/_lscp", "completion/zsh/_lsftp"
  end

  test do
    system "#{bin}/lscp"
    system "#{bin}/lsftp"
  end
end

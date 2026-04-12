class LsshCore < Formula
  desc "Core lssh binary"
  homepage "https://github.com/blacknon/lssh"
  version "0.9.0"

  conflicts_with "lssh", because: "both install the lssh binary"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-core_#{version}_darwin_arm64.tar.gz"
    sha256 "a2d3252185cb290eb280ffbd74d89b3e9931a5ef8465f6ab5348a532793e99f7"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-core_#{version}_darwin_amd64.tar.gz"
    sha256 "9b42ad4d3a5f344eda7c837621219862c8e8be0ed522f84db952ec91504b9388"
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

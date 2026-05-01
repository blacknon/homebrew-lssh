class LsshProviders < Formula
  desc "Bundled provider executables for lssh"
  homepage "https://github.com/blacknon/lssh"
  version "0.10.0"

  conflicts_with "lssh-complete", because: "both install the bundled lssh provider executables"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-providers_#{version}_darwin_arm64.tar.gz"
    sha256 "ae5805dbe7fd2237542b5e9083d31d2495c842da6adb2c70342393b7955feb9d"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacknon/lssh/releases/download/v#{version}/lssh-providers_#{version}_darwin_amd64.tar.gz"
    sha256 "6fee4cabf6b9aa1ff3ec8c8c1174cd611504aac60b4f1dc9e110d13554ded485"
  end

  def install
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
    output = shell_output("#{bin}/provider-connector-openssh 2>&1", 1)
    assert_match "unexpected end of JSON input", output
  end
end

# homebrew-lssh

Homebrew tap for `lssh`.

## Available Formulae

- `lssh`: full package with `lssh`, `lsdiff`, `lscp`, `lsftp`, `lsmon`, `lsmux`, `lspipe`, `lsshfs`, `lssync`, and `lsshell`
- `lssh-complete`: full package with the command suite plus bundled providers
- `lssh-core`: installs `lssh`
- `lssh-transfer`: installs `lsdiff`, `lscp`, `lsftp`, `lsshfs`, and `lssync`
- `lssh-monitor`: installs `lsmon`
- `lssh-sysadmin`: installs `lsmux`, `lspipe`, and `lsshell`
- `lssh-providers`: installs the bundled provider executables only

## Add Tap

```bash
brew tap blacknon/lssh
```

## Install

Install the full package:

```bash
brew install lssh
```

Install the full package with bundled providers:

```bash
brew install lssh-complete
```

Install only the core command:

```bash
brew install lssh-core
```

Install only transfer commands:

```bash
brew install lssh-transfer
```

Install only the monitor command:

```bash
brew install lssh-monitor
```

Install only the sysadmin commands:

```bash
brew install lssh-sysadmin
```

Install only the bundled providers:

```bash
brew install lssh-providers
```

## Notes

- `lssh` conflicts with the split Formulae because they install some of the same binaries.
- `lssh-complete` conflicts with the command Formulae and `lssh-providers` because it includes both the command suite and providers.
- If you want all commands, install `lssh`.
- If you want all commands plus bundled providers, install `lssh-complete`.
- If you want only specific commands, install the matching split Formula instead of `lssh`.
- Provider executables are installed under `libexec/providers` and symlinked into `bin`.

## Installed Commands

### `lssh`

- `lssh`
- `lsdiff`
- `lscp`
- `lsftp`
- `lsmon`
- `lsmux`
- `lspipe`
- `lsshfs`
- `lssync`
- `lsshell`

### `lssh-core`

- `lssh`

### `lssh-complete`

- `lssh`
- `lsdiff`
- `lscp`
- `lsftp`
- `lsmon`
- `lsmux`
- `lspipe`
- `lsshfs`
- `lssync`
- `lsshell`
- `provider-connector-openssh`
- `provider-connector-telnet`
- `provider-connector-winrm`
- `provider-inventory-azure-compute`
- `provider-inventory-gcp-compute`
- `provider-inventory-proxmox`
- `provider-mixed-aws-ec2`
- `provider-mixed-azure-compute`
- `provider-mixed-gcp-compute`
- `provider-secret-bitwarden`
- `provider-secret-custom-script`
- `provider-secret-onepassword`
- `provider-secret-os-keychain`

### `lssh-transfer`

- `lsdiff`
- `lscp`
- `lsftp`
- `lsshfs`
- `lssync`

### `lssh-monitor`

- `lsmon`

### `lssh-sysadmin`

- `lsmux`
- `lspipe`
- `lsshell`

### `lssh-providers`

- `provider-connector-openssh`
- `provider-connector-telnet`
- `provider-connector-winrm`
- `provider-inventory-azure-compute`
- `provider-inventory-gcp-compute`
- `provider-inventory-proxmox`
- `provider-mixed-aws-ec2`
- `provider-mixed-azure-compute`
- `provider-mixed-gcp-compute`
- `provider-secret-bitwarden`
- `provider-secret-custom-script`
- `provider-secret-onepassword`
- `provider-secret-os-keychain`

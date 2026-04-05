# homebrew-lssh

Homebrew tap for `lssh`.

## Available Formulae

- `lssh`: full package with `lssh`, `lscp`, `lsftp`, `lsmon`, and `lsshell`
- `lssh-core`: installs `lssh`
- `lssh-transfer`: installs `lscp` and `lsftp`
- `lssh-monitor`: installs `lsmon`
- `lssh-sysadmin`: installs `lsshell`

## Add Tap

```bash
brew tap blacknon/lssh
```

## Install

Install the full package:

```bash
brew install lssh
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

Install only the sysadmin command:

```bash
brew install lssh-sysadmin
```

## Notes

- `lssh` conflicts with the split Formulae because they install some of the same binaries.
- If you want all commands, install `lssh`.
- If you want only specific commands, install the matching split Formula instead of `lssh`.

## Installed Commands

### `lssh`

- `lssh`
- `lscp`
- `lsftp`
- `lsmon`
- `lsshell`

### `lssh-core`

- `lssh`

### `lssh-transfer`

- `lscp`
- `lsftp`

### `lssh-monitor`

- `lsmon`

### `lssh-sysadmin`

- `lsshell`

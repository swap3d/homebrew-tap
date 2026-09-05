# Swap3D Homebrew Tap

Official Homebrew tap for [Swap3D CLI](https://github.com/swap3d/swap3d-cli).

## Install

```bash
brew install swap3d/tap/swap3d
```

## Upgrade

```bash
brew upgrade swap3d
```

## Uninstall

```bash
brew uninstall swap3d
```

The formula is generated from the checksums of each Swap3D CLI GitHub Release and
is synchronized automatically.

The update workflow checks every six hours and can also be run manually. If the
downloaded formula matches the committed file, it exits successfully without
running Homebrew validation or creating a commit. Changed formulae must still
pass `brew style` and `brew audit` before publication. This avoids repeatedly
auditing an unchanged release against changing Homebrew rules and sending
failure notifications when there is nothing to update.

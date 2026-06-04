# Homebrew Tap for Onggi

Personal Homebrew tap for Onggi, a Korean-first macOS launcher for Windows Steam games on Apple Silicon Macs.

## Install

```bash
brew tap sososogoa/onggi
brew install --cask onggi
```

## Upgrade

```bash
brew update
brew upgrade --cask onggi
```

## Current Cask

- Version: `0.1.0-alpha.1`
- App: `Onggi.app`
- Display name: `옹기`
- Bundle identifier: `dev.khs.onggi`
- Release URL: `https://github.com/sososogoa/homebrew-onggi/releases/download/v0.1.0-alpha.1/Onggi-0.1.0-alpha.1.zip`

The release asset must be uploaded before this cask can install successfully.

The Homebrew tap and release artifact are public so Homebrew can download the app archive. The application source repository may remain private.

User data is stored under `~/Library/Application Support/Onggi` and is not removed by `brew uninstall --cask onggi`.

## Alpha Caveat

The first alpha build is unsigned because it is distributed without an Apple Developer Program account. macOS Gatekeeper may require additional confirmation on first launch.

# homebrew-tap

Homebrew tap for [BadRat-in](https://github.com/BadRat-in) tools.

## Install

```bash
brew install BadRat-in/tap/fsj      # FS Janitor
brew install BadRat-in/tap/wifikit  # WiFiKit
```

Or tap first, then install by name:

```bash
brew tap BadRat-in/tap
brew install fsj
```

## Formulae

| Formula | Description |
|---|---|
| [`fsj`](Formula/fsj.rb) | The filesystem maintenance toolkit for macOS — storage cleanup, scheduled expirations, directory watchers and a maintenance score, via a CLI and a full-screen TUI ([repo](https://github.com/BadRat-in/fs-janitor)) |
| [`wifikit`](Formula/wifikit.rb) | Terminal UI + CLI driving an ESP32 running Marauder for authorized WiFi security testing ([repo](https://github.com/BadRat-in/wifikit)) |

## Notes

- **`fsj`** installs a prebuilt, cgo-free macOS binary from the GitHub release (darwin arm64/amd64).
- **`wifikit`** is a Python application installed into an isolated virtualenv; its dependencies (including `cryptography`, pulled in by `esptool`) build from source, so the first install compiles a few packages.

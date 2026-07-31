# homebrew-tap

Homebrew tap for [BadRat-in](https://github.com/BadRat-in) tools.

## Install

```bash
brew install BadRat-in/tap/fsj              # FS Janitor (CLI + TUI)
brew install BadRat-in/tap/wifikit          # WiFiKit (CLI + TUI)
brew install --cask BadRat-in/tap/macisland # MacIsland (GUI app)
```

Or tap first, then install by name:

```bash
brew tap BadRat-in/tap
brew install fsj
brew install --cask macisland
```

## Formulae

| Formula | Description |
|---|---|
| [`fsj`](Formula/fsj.rb) | The filesystem maintenance toolkit for macOS — storage cleanup, scheduled expirations, directory watchers and a maintenance score, via a CLI and a full-screen TUI ([repo](https://github.com/BadRat-in/fs-janitor)) |
| [`wifikit`](Formula/wifikit.rb) | Terminal UI + CLI driving an ESP32 running Marauder for authorized WiFi security testing ([repo](https://github.com/BadRat-in/wifikit)) |

## Casks

| Cask | Description |
|---|---|
| [`macisland`](Casks/macisland.rb) | A dynamic-island UI for macOS — notification pop-ups, battery status and music controls (GUI app, requires macOS 14+) ([repo](https://github.com/BadRat-in/MacIsland)) |

## Notes

- **`fsj`** installs a prebuilt, cgo-free macOS binary from the GitHub release (darwin arm64/amd64).
- **`wifikit`** is a Python app installed into an isolated virtualenv; its dependencies (including `cryptography`, via `esptool`) build from source, so the first install compiles a few packages.
- **`macisland`** is a GUI application (Cask). It is signed but not notarized, so Gatekeeper may prompt on first launch — right-click the app and choose **Open**, or run `xattr -dr com.apple.quarantine "/Applications/MacIsland.app"`.

# typed: false
# frozen_string_literal: true

# Homebrew formula for FS Janitor (fsj) — the filesystem maintenance toolkit for
# macOS. Installs the prebuilt release binary for the host architecture.
# Replaces the retired `cleanx` formula. Bumped on each fs-janitor release.
class Fsj < Formula
  desc "Filesystem maintenance toolkit for macOS — cleanup, expirations, watchers"
  homepage "https://github.com/BadRat-in/fs-janitor"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BadRat-in/fs-janitor/releases/download/v1.0.0/fsj-darwin-arm64.tar.gz"
      sha256 "a2b1f8c20ffe84b81f477f5109b8c01729906bd6d3aaca91d1563504dac4fcea"
    end
    on_intel do
      url "https://github.com/BadRat-in/fs-janitor/releases/download/v1.0.0/fsj-darwin-amd64.tar.gz"
      sha256 "eb6c3857126e8b3c89d9f2c7b3fcdd0dfa60ff518f445943e7b0022470da809d"
    end
  end

  def install
    # The release tarball contains an arch-suffixed binary; install it as "fsj".
    bin.install Dir["fsj-darwin-*"].first => "fsj"
  end

  test do
    assert_match "fsj", shell_output("#{bin}/fsj version")
  end
end

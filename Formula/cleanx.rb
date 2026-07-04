class Cleanx < Formula
  desc "Smart macOS cleanup utility for leftover app files and dev caches"
  homepage "https://github.com/BadRat-in/cleanx"
  version "0.1.2"
  license "GPL-3.0-or-later"

  # Prebuilt, Developer-ID-signed binaries from the GitHub release — no Go
  # toolchain required to install (unlike a build-from-source formula).
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BadRat-in/cleanx/releases/download/v0.1.2/cleanx-darwin-arm64.tar.gz"
      sha256 "08d70d9d1c1529c396b8d7dffbdd16440ccb1b7f2182d7ede95294b4b36b3e35"
    else
      url "https://github.com/BadRat-in/cleanx/releases/download/v0.1.2/cleanx-darwin-amd64.tar.gz"
      sha256 "54f0f568c046c79cba8440985f6c4004abf5d119d0a0afe6e15fb5c6e76aec25"
    end
  end

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "cleanx-darwin-#{arch}" => "cleanx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cleanx --version")
  end
end

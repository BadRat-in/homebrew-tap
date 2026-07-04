class Cleanx < Formula
  desc "Smart macOS cleanup utility for leftover app files and dev caches"
  homepage "https://github.com/BadRat-in/cleanx"
  version "0.1.0"
  license "GPL-3.0-or-later"

  # Prebuilt, Developer-ID-signed binaries from the GitHub release — no Go
  # toolchain required to install (unlike a build-from-source formula).
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/BadRat-in/cleanx/releases/download/v0.1.0/cleanx-darwin-arm64.tar.gz"
      sha256 "33e575b4d4873c0c5b363f7daf1721a4dfd991ae246adcd94528b871cfa8770c"
    else
      url "https://github.com/BadRat-in/cleanx/releases/download/v0.1.0/cleanx-darwin-amd64.tar.gz"
      sha256 "cd74afad4174d90e84a765297bf613f48ac00188909b1adc70329e8892c2ef34"
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

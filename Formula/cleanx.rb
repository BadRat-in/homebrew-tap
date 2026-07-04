class Cleanx < Formula
  desc "Smart macOS cleanup utility for leftover app files and dev caches"
  homepage "https://github.com/BadRat-in/cleanx"
  url "https://github.com/BadRat-in/cleanx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fd52c0759d9bd8f15995dd38878d22592d90cf0fba95c9db86e8dd2821aa575c"
  license "GPL-3.0-or-later"
  head "https://github.com/BadRat-in/cleanx.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/cleanx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cleanx --version")
  end
end

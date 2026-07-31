cask "macisland" do
  version "1.1.0"
  sha256 "8dacc9ce7e4665d64826bbf38687c2d508ea7763d55ea69a80a4baee2d2534a2"

  url "https://github.com/BadRat-in/MacIsland/releases/download/v#{version}/MacIsland-#{version}.zip",
      verified: "github.com/BadRat-in/MacIsland/"
  name "MacIsland"
  desc "Dynamic island with notifications, battery and music controls"
  homepage "https://github.com/BadRat-in/MacIsland"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MacIsland.app"

  zap trash: [
    "~/Library/Application Support/MacIsland",
    "~/Library/Caches/com.rkinnovate.MacIsland",
    "~/Library/HTTPStorages/com.rkinnovate.MacIsland",
    "~/Library/Preferences/com.rkinnovate.MacIsland.plist",
    "~/Library/Saved Application State/com.rkinnovate.MacIsland.savedState",
  ]
end

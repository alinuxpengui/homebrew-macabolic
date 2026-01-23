cask "macabolic" do
  version "2.2.0"
  sha256 "3cbe16109c9153b97a6a852849a9cac4a27b831aac20f81216803e5a8b342144"

  url "https://github.com/alinuxpengui/Macabolic/releases/download/v#{version}/Macabolic-v#{version}.dmg"
  name "Macabolic"
  desc "Beautiful macOS GUI for yt-dlp to download videos from YouTube and other platforms"
  homepage "https://github.com/alinuxpengui/Macabolic"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Macabolic.app"

  zap trash: [
    "~/Library/Application Support/Macabolic",
    "~/Library/Preferences/com.alinuxpengui.Macabolic.plist",
    "~/Library/Caches/com.alinuxpengui.Macabolic",
  ]
end

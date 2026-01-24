cask "macabolic" do
  version "2.4.1"
  sha256 "e279516b0e06b3354addcf24b0569627c3ba63b2e152f172ec3f9e4b3febbdda"

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

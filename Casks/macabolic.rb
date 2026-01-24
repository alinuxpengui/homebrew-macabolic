cask "macabolic" do
  version "2.4.1"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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

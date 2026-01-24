cask "macabolic" do
  version "2.4.0"
  sha256 "961a4120f041cccc1bdd294e43e27e95658c7d2d8bc9581d585da9c66707a3b0"

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

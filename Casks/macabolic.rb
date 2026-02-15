cask "macabolic" do
  version "3.1.0"
  sha256 "32870c2ecfad7e168c33038af9437110ad0dbae842cbcd9753a1b195fdec0c93"

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

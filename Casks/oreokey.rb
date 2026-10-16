cask "oreokey" do
  version "0.10.1"
  sha256 "393d7a3e5d24933c6bcd3778223d9e826a9ab3d8c97a1ea11c74e79116cf16f4"

  url "https://github.com/OreoSolutions/oreokey/releases/download/v#{version}/OreoKey.dmg"
  name "OreoKey"
  desc "Vietnamese input method (Telex/VNI) with anti-flicker text replacement"
  homepage "https://oreokey.vercel.app"

  livecheck do
    url "https://raw.githubusercontent.com/OreoSolutions/oreokey/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "OreoKey.app"

  uninstall quit: "com.oreosolutions.oreokey"

  zap trash: [
    "~/Library/Application Support/OreoKey",
    "~/Library/Caches/com.oreosolutions.oreokey",
    "~/Library/HTTPStorages/com.oreosolutions.oreokey",
    "~/Library/Preferences/com.oreosolutions.oreokey.plist",
  ]
end

cask "oreokey" do
  version "0.8.0"
  sha256 "cf657e37bb0e9e51042f0e2ed36af077ce64e669b0548cfcc9ac523f80c4c982"

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

cask "oreokey" do
  version "0.9.0"
  sha256 "19a19a8c2294abed8a63096b720661f374050dd79e978693ea1dee9ce4341eb8"

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

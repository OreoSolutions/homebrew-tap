cask "oreokey" do
  version "0.10.0"
  sha256 "f46a3ad4eb5f7c22d539f0a3f5dba1f4e41ce4d669a8a85012d6ea8b3bad8ae7"

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

cask "ithoughtsx" do
  version "5.24"
  sha256 "03a3ca4e65e55acc45bd6922fb649e380a9487a3450c17e9b8c6062c9a5325d5"

  # ithoughtsx.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ithoughtsx.s3.amazonaws.com/iThoughtsX_#{version.dots_to_underscores}.zip"
  appcast "https://ithoughtsx.s3.amazonaws.com/ithoughtsx.xml"
  name "iThoughtsX"
  homepage "https://www.toketaware.com/ithoughts-osx"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "iThoughtsX.app"

  zap trash: [
    "~/Library/Caches/CloudKit/com.apple.bird/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.toketaware.ithoughtsx/",
    "~/Library/Caches/com.toketaware.ithoughtsx/",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.toketaware.ios.ithoughts/",
    "~/Library/Application Support/com.toketaware.ithoughtsx/",
    "~/Library/Preferences/com.toketaware.ithoughtsx.plist",
  ]
end

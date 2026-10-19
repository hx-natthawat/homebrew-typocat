cask "typocat" do
  version :latest
  sha256 :no_check

  url "https://github.com/hx-natthawat/typocat/releases/latest/download/TypoCat.dmg"
  name "TypoCat"
  desc "Fixes words typed on the wrong keyboard layout"
  homepage "https://github.com/hx-natthawat/typocat"

  depends_on macos: ">= :ventura"

  app "TypoCat.app"

  zap trash: [
    "~/Library/Application Support/TypoCat",
    "~/Library/Preferences/com.typocat.app.plist",
  ]

  caveats <<~EOS
    TypoCat isn't notarized. If macOS says it can't check it for malware,
    open System Settings > Privacy & Security and click Open Anyway.
    Then turn TypoCat on in Privacy & Security > Accessibility.

    The cask always installs the latest release. To update:
      brew upgrade --cask --greedy typocat
    or use Check for Updates… in TypoCat's menu.
  EOS
end

cask "typocat" do
  version "0.2.0"
  sha256 "847a084988fba5e2df5fc61e0b93063672b286941f675a58fb90a7a72ca9a195"

  url "https://github.com/hx-natthawat/typocat/releases/download/v#{version}/TypoCat.dmg"
  name "TypoCat"
  desc "Fixes words typed on the wrong keyboard layout"
  homepage "https://github.com/hx-natthawat/typocat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "TypoCat.app"

  zap trash: [
    "~/Library/Application Support/TypoCat",
    "~/Library/Preferences/com.typocat.app.plist",
  ]

  caveats <<~EOS
    TypoCat is open source but not notarized by Apple, so macOS can't vouch for
    this build. To fix words it needs Accessibility access, which lets an app
    see every key you press. Only allow it if you trust this build, for example
    after checking its source at the homepage above or building it yourself.
  EOS
end

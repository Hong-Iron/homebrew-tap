cask "folio" do
  version "0.1.0"
  sha256 "2193353d71da1e33adfccc15b307eef1a4dc8f5f648f1072f8d811def36fd365"

  url "https://github.com/Hong-Iron/folio/releases/download/v#{version}/Folio-#{version}.dmg"
  name "Folio"
  desc "Counts the time you really study, using the camera"
  homepage "https://github.com/Hong-Iron/folio"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Folio.app"

  uninstall quit: "app.folio.Folio"

  zap trash: [
    "~/Library/Application Support/Folio",
    "~/Library/Preferences/app.folio.Folio.plist",
  ]

  caveats <<~EOS
    Folio isn't notarized by Apple. The first time you open it, go to
    System Settings → Privacy & Security and click "Open Anyway" next to Folio.
  EOS
end

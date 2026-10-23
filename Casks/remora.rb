cask "remora" do
  version "0.1.4"
  sha256 "8a28f0927773fd81891854f2fe2077ca4eb75b35db62b35fe1fb7ab54ca2d99f"

  url "https://github.com/openparen/remora/releases/download/v#{version}/Remora-#{version}.dmg"
  name "Remora"
  desc "Reader for the reMarkable cloud with a link to every page"
  homepage "https://remora.open-paren.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Remora.app"

  zap trash: [
    "~/Library/Caches/Remora",
    "~/Library/Preferences/io.github.gveres.remora.plist",
    "~/Library/Saved Application State/io.github.gveres.remora.savedState",
  ]
end

cask "remora" do
  version "0.1.0"
  sha256 "1d4300184b09469c48daf109b80ba6c9f8ea4a15bc61c4af4173d79226a91f5f"

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

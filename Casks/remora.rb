cask "remora" do
  version "0.1.2"
  sha256 "884cd19c3e4a8208f7e02413d8d87944cd4499310ba3564e09b9903e138c4d67"

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

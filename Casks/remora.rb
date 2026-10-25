cask "remora" do
  version "0.1.5"
  sha256 "ad1802aaaed5fb8993818b53e1eedfa57e1fa61e0afad4f8b26f522725693bb2"

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

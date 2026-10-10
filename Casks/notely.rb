cask "notely" do
  version "8.28.0,118"
  sha256 "cb465a0404dd01fdf56272b0a15eb3c2e9b8bcebd1d4b4d1badf0c5a7d6ece71"

  url "https://notelyapp.ca/downloads/releases/#{version.csv.first}/#{version.csv.second}/Notely.dmg"
  name "Notely"
  desc "Notes, tasks, and AI chat in a private workspace"
  homepage "https://notelyapp.ca/"

  livecheck do
    url "https://notelyapp.ca/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Notely.app"
end

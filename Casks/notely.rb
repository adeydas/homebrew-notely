cask "notely" do
  version "8.53.0,143"
  sha256 "5991e961cfa4819978ec249449713eeca0abc0580a6d44240ebb0620dd326afc"

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

cask "notely" do
  version "8.57.0,149"
  sha256 "1a18226a0cbb4dbda1ca8139f303d14db8dfd468657a03e02b57bd5a7bbff860"

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

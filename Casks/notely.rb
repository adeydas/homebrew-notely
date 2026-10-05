cask "notely" do
  version "8.15.0,105"
  sha256 "716e2e1e5e385b828e695bb7237a3df394695cadfeb820193d0eac426893192e"

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

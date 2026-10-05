cask "notely" do
  version "8.14.0,104"
  sha256 "ce7c4d0b7aaa79388e4337d5b5641fd6124f7307074d231b9f3decadb605c113"

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

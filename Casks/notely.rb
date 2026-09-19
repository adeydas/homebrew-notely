cask "notely" do
  version "7.8.1,81"
  sha256 "632fc20548def413bb4b5ec251fa7bc2b7ea77b54e7854b5689bcd0851a7242c"

  url "https://notelyapp.ca/downloads/releases/#{version.csv.first}/#{version.csv.second}/Notely.dmg"
  name "Notely"
  desc "Notes, tasks, and AI chat in a private workspace"
  homepage "https://notelyapp.ca/"

  livecheck do
    url "https://notelyapp.ca/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= 15.0"

  app "Notely.app"
end

cask "notely" do
  version "8.60.0,152"
  sha256 "26cdcdcfd1237553d83752e70b63b02feeb9f06b7d3a8abe6f0bfe8e1c8b835b"

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

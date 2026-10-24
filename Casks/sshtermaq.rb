cask "sshtermaq" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "e4996c7002bd0ae47310ab7cf1ec8643062bfd3827221a713ae8e7ffb401a93a",
         intel: "782dc1ff82c23eb987f4529e74f29ec963b61e2ffd9b70aea4083cf0b5dfbe05"

  url "https://github.com/f1resh/sshtermaq/releases/download/#{version}/SSHTermaq-#{version}-mac-#{arch}.dmg"
  name "SSHTermaq"
  desc "PuTTY-compatible SSH client with tabs, split panes and an SFTP file manager"
  homepage "https://f1resh.github.io/sshtermaq/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "SSHTermaq.app"

  zap trash: [
    "~/Library/Application Support/SSHTermaq",
    "~/Library/Logs/SSHTermaq",
    "~/Library/Preferences/io.github.f1resh.sshtermaq.plist",
    "~/Library/Saved Application State/io.github.f1resh.sshtermaq.savedState",
  ]
end

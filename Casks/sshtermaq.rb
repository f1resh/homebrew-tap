cask "sshtermaq" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "0581d2af97af35ce5c08cb2f85fcee2eaf7dd4367938240b5feafa790108473a",
         intel: "00fa5ef15804d47d1e6d85598779c25cd297273cdeb1febebae10df555d2ddad"

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

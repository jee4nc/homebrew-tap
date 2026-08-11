cask "mariner" do
  version "1.0.4"
  sha256 "df231c7e970bfdc2c6cccfd04c39f56617810c6b76381ad9f9906c833b8d28b2"

  url "https://github.com/jee4nc/mariner-releases/releases/download/v#{version}/Mariner-#{version}.zip"
  name "Mariner"
  desc "GUI client for testing HTTP APIs"
  homepage "https://github.com/jee4nc/mariner-releases"

  # LSMinimumSystemVersion del bundle es 15.0
  depends_on macos: :sequoia

  app "Mariner.app"

  zap trash: [
    "~/Library/Application Support/jee4nc.Mariner",
    "~/Library/Caches/jee4nc.Mariner",
    "~/Library/Preferences/jee4nc.Mariner.plist",
    "~/Library/Saved Application State/jee4nc.Mariner.savedState",
  ]
end

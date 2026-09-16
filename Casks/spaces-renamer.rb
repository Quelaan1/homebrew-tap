cask "spaces-renamer" do
  version "2.1.0"
  sha256 "448e784f7078f5d3ab100c03dcb4561de6a324cae08f78a3d425d9fefb20313c"

  url "https://github.com/Quelaan1/spaces-renamer/releases/download/v#{version}/SpacesRenamer-#{version}.dmg"
  name "Spaces Renamer"
  desc "Rename macOS Spaces in Mission Control"
  homepage "https://github.com/Quelaan1/spaces-renamer"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "SpacesRenamer.app"

  caveats <<~CAVEATS
    Renaming needs System Integrity Protection disabled and the arm64e preview ABI:
      sudo nvram boot-args=-arm64e_preview_abi
    Then open the app and activate the plugin from the Diagnostics pane.
    See https://github.com/Quelaan1/spaces-renamer#first-run
  CAVEATS

  zap trash: [
    "~/Library/Containers/com.alexbeals.SpacesRenamer",
  ]
end

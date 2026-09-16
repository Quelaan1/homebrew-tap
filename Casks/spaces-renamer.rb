cask "spaces-renamer" do
  version "2.1.1"
  sha256 "becf907f4e2e0c9d0639510c631e1fe5c7543dab1f4827c3a87d7c8007a7a739"

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

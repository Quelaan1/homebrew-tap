cask "spaces-renamer" do
  version "2.0.0"
  sha256 "4d1cadb98bf007389c147447f7bb42e615c95fa82e5772a26c82b3f34f57d58e"

  url "https://github.com/Quelaan1/spaces-renamer/releases/download/v#{version}/SpacesRenamer-#{version}.dmg"
  name "Spaces Renamer"
  desc "Rename macOS Spaces in Mission Control"
  homepage "https://github.com/Quelaan1/spaces-renamer"

  depends_on macos: ">= :tahoe"
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

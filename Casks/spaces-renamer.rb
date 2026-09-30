cask "spaces-renamer" do
  version "2.2.0"
  sha256 "e739bf673fd4c44943ab13ec15724be29a936a4d2d4231de1d23a57263f03972"

  url "https://github.com/Quelaan1/spaces-renamer/releases/download/v#{version}/SpacesRenamer-2.2.0.dmg"
  name "Spaces Renamer"
  desc "Rename macOS Spaces in Mission Control"
  homepage "https://github.com/Quelaan1/spaces-renamer"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "SpacesRenamer.app"

  caveats <<~CAVEATS
    Renaming needs System Integrity Protection disabled and
    sudo nvram boot-args=-arm64e_preview_abi
    See https://github.com/Quelaan1/spaces-renamer#prerequisites
  CAVEATS

  zap trash: [
    "~/Library/Containers/com.alexbeals.SpacesRenamer",
  ]
end

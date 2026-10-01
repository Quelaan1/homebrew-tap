cask "spaces-renamer" do
  version "2.2.1"
  sha256 "2cdda24be3c682963f28cadce2377e10d19587bfe549c461ca9bba0a8a92fb67"

  url "https://github.com/Quelaan1/spaces-renamer/releases/download/v#{version}/SpacesRenamer-2.2.1.dmg"
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

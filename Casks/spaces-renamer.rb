cask "spaces-renamer" do
  version "2.2.2"
  sha256 "a0f878e94647ac4beebafb84644595861e3f326ba2fee196c6632e5f86683875"

  url "https://github.com/Quelaan1/spaces-renamer/releases/download/v#{version}/SpacesRenamer-2.2.2.dmg"
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

cask 'moter' do
  version 'v0.0.7'
  sha256 'd91bdda4335d9f955dc3d47cf954b93a697f241bb13154246592f446292fc320'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.7/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'
  depends_on cask: 'iterm2'

  binary 'moter'
end

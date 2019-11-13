cask 'moter' do
  version 'v0.0.4'
  sha256 '63046ed3c190db00c4ef83277f3c978682d32829f439f7da9c35c4b821a3f084'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.4/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'
  depends_on cask: 'iterm2'

  binary 'moter'
end

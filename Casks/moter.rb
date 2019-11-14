cask 'moter' do
  version 'v0.0.6'
  sha256 '777f86fec5379643dd5109b7ea45e5e21ffd25679d8c4a69eb577e5d8ec0c694'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.6/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'
  depends_on cask: 'iterm2'

  binary 'moter'
end

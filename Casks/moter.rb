cask 'moter' do
  version 'v0.0.5'
  sha256 '55dccb4c76761848c6ac97078553aeeb08bfc6463144410b4b9f22cf32af491e'

  url 'https://github.com/gWOLF3/moter/releases/download/v0.0.5/moter'
  appcast 'https://github.com/gWOLF3/moter/releases.atom'
  name 'Moter'
  homepage 'https://github.com/gWOLF3/moter'

  depends_on cask: 'vlc'
  depends_on cask: 'spectacle'
  depends_on cask: 'iterm2'

  binary 'moter'
end

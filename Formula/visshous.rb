class Visshous < Formula
  desc "😈 infect remote ssh sessions with your vim profile"
  homepage "https://github.com/gWOLF3/viSSHous"
  url "https://github.com/gWOLF3/viSSHous/archive/v0.0.1.tar.gz"
  sha256 "2b11ff6d391033650978b1d0a0fad82317bff62dc93face10c5bdcf776d1503a"
  license "MIT"

  bottle :unneeded

  def install
    bin.install "vissh"
  end

  plist_options startup: true

  def plist
    <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <true/>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>RunAtLoad</key>
        <true/>
        <key>WatchPaths</key>
        <array>
          <string>$HOME/.vimrc</string>
        </array>
      </dict>
      </plist> 
    EOS
  end

  test do
    system "false"
  end
end

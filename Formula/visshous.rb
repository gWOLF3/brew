class Visshous < Formula
  desc "😈 infect remote ssh sessions with your vim profile"
  homepage "https://github.com/gWOLF3/viSSHous"
  url "https://github.com/gWOLF3/viSSHous/archive/v0.0.2.tar.gz"
  sha256 "063f9dee9fe4d1e12092c28371e8360fc1d328bee691329d73cb87a760ad068d"
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

function avilist --wraps='ls *.avi | sort -V > playlist.m3u' --description 'alias avilist ls *.avi | sort -V > playlist.m3u'
    ls *.avi | sort -V > playlist.m3u $argv
end

function mp3list --wraps='ls *.mp3 | sort -V > playlist.m3u' --description 'alias mp3list ls *.mp3 | sort -V > playlist.m3u'
    ls *.mp3 | sort -V > playlist.m3u $argv
end

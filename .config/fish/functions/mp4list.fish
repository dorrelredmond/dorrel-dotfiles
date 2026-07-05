function mp4list --wraps='ls *.mp4 | sort -V > playlist.m3u' --description 'alias mp4list ls *.mp4 | sort -V > playlist.m3u'
    ls *.mp4 | sort -V > playlist.m3u $argv
end

function webmlist --wraps='ls *.webm | sort -V > playlist.m3u' --description 'alias webmlist ls *.webm | sort -V > playlist.m3u'
    ls *.webm | sort -V > playlist.m3u $argv
end

function mkvlist --wraps='ls *.mkv | sort -V > playlist.m3u' --description 'alias mkvlist ls *.mkv | sort -V > playlist.m3u'
    ls *.mkv | sort -V > playlist.m3u $argv
end

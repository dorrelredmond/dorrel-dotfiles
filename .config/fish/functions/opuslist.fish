function opuslist --wraps='ls *.opus | sort -V > playlist.m3u' --description 'alias opuslist ls *.opus | sort -V > playlist.m3u'
    ls *.opus | sort -V > playlist.m3u $argv
end

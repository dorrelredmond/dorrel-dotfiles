function wavlist --wraps='ls *.wav | sort -V > playlist.m3u' --description 'alias wavlist ls *.wav | sort -V > playlist.m3u'
    ls *.wav | sort -V > playlist.m3u $argv
end

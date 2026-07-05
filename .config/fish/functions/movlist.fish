function movlist --wraps='ls *.mov | sort -V > playlist.m3u' --description 'alias movlist ls *.mov | sort -V > playlist.m3u'
    ls *.mov | sort -V > playlist.m3u $argv
end

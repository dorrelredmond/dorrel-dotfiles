function ytaudio
  yt-dlp -x -o '%(title)s.%(ext)s' \
  --sponsorblock-mark "all" \
  --geo-bypass \
  $argv
end

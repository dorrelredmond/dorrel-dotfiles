function ytarchivevideo
    yt-dlp -f bestvideo[height<=1440][ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best -o '%(upload_date)s - %(channel)s - %(title)s.%(ext)s' \
  --sponsorblock-mark "all" \
  --geo-bypass \
  --sub-langs 'all' \
  --embed-metadata \
  --convert-subs 'srt' \
  --download-archive $argv[1] $argv[2];
end

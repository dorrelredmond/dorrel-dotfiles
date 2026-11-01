#!/bin/bash
rclone mount gdrive: /mnt/gdrive/ \
  --vfs-cache-mode full \
  --vfs-cache-max-size 100G \
  --buffer-size 1G \
  --vfs-read-ahead 512M

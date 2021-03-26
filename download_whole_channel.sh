#!/usr/bin/bash

if [ -z "$1" ]
then
  echo "Usage: ./download_whole_channel [CHANNEL_URL]"
  echo
  echo "This script can be used to download all videos in a youtube channel"
  echo "You can also download videos from specific playlist by fill [CHANNEL_URL] with Playlist URL"
  echo "Or you could just download one video by fill [CHANNEL_URL] with the video URL"
  echo
  echo "This script will download the best quality of video and audio for each video"
  echo
else
  youtube-dl -f 'bestvideo+bestaudio' -ciw -o "%(title)s.%(ext)s" -v $1
fi

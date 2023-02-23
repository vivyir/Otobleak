#!/bin/bash

# utility that converts all mp3 files into ogg and puts them into music directory
for i in *.mp3;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" "music/${name}.ogg"
done

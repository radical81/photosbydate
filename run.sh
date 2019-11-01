#!/bin/bash
set -x

photos=("jpg" "JPG" "png" "PNG" "JPEG" "HEIC") 
for p in "${photos[@]}"
do
    for f in *.$p
    do
        dateFolder=$(mdls "$f" | awk '/^kMDItemContentCreationDate / { print $3 "/"}')
        mkdir -p $dateFolder
        mv "$f" $dateFolder
    done
done

videos=("mov" "MOV" "MP4" "mp4") 

for v in "${videos[@]}"
do 
    for f in *.$v
    do
        dateFolder=$(exiftool -CreationDate "$f" |awk '{print $4 "/"}' |sed -e 's/:/-/g')
        mkdir -p $dateFolder
        mv "$f" $dateFolder    
    done    
    for f in *.$v
    do
        dateFolder=$(exiftool -CreateDate "$f" |awk '{print $4 "/"}' |sed -e 's/:/-/g')
        mkdir -p $dateFolder
        mv "$f" $dateFolder    
    done        
done
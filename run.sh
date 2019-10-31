#!/bin/bash
set -x

for f in *.JPG
do
    dateFolder=$(mdls "$f" | awk '/^kMDItemContentCreationDate / { print $3 "/"}')
    mkdir -p $dateFolder
	mv "$f" $dateFolder
done

for f in *.MOV
do
    dateFolder=$(exiftool -CreationDate "$f" |awk '{print $4 "/"}' |sed -e 's/:/-/g')
    mkdir -p $dateFolder
	mv "$f" $dateFolder    
done

for f in *.mov
do
    dateFolder=$(exiftool -CreateDate "$f" |awk '{print $4 "/"}' |sed -e 's/:/-/g')
    mkdir -p $dateFolder
	mv "$f" $dateFolder    
done

for f in *.MP4
do
    dateFolder=$(exiftool -CreationDate "$f" |awk '{print $4 "/"}' |sed -e 's/:/-/g')
    mkdir -p $dateFolder
	mv "$f" $dateFolder    
done

for f in *.mp4
do
    dateFolder=$(exiftool -CreateDate "$f" |awk '{print $4 "/"}' |sed -e 's/:/-/g')
    mkdir -p $dateFolder
	mv "$f" $dateFolder    
done
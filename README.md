# PhotosByDate

PhotosByDate is a bash script to help you organise your photos (in .JPG) and videos (in .MOV) according to their creation dates. The folders will be named according to those dates.

## Prerequisites
* Mac OS command line
* exiftool (install from [this page](https://www.sno.phy.queensu.ca/~phil/exiftool/) or
```bash
brew install exiftool
```

## Installation

After cloning this repo, copy run.sh into the same folder as all your .JPG and .MOV files. Make sure run.sh is executable, and you can do this via the command line:


```bash
chmod a+x run.sh
```

## Usage

Just run via command line:
```bash
cd <folder name>
./run.sh
```



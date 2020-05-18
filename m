#!/bin/bash
mkdir -p ~/Downloads/archive
find ~/Library/Containers/com.tencent.xinWeChat/Data/Library/Application\ Support/com.tencent.xinWeChat/2.0b4.0.9/ -type f -name *.pdf -newermt "$1" ! -newermt "$2" -exec cp {} ~/Downloads/archive \;
open ~/Downloads/archive

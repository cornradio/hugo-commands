#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "[error] Usage: new.sh <name>"
else
    cur_date=$(date +'%Y-%m-%d')
    echo "$cur_date-$1"
    originalPath=$(pwd)
    cd /Users/kasusa/Documents/GitHub/hugo-stacktheme/content/post/
    cp abctest.md "$cur_date-$1.md"
    # Replace post name and date
    sed -i '' -e "s/abctest/$1/g" "$cur_date-$1.md"
    sed -i '' -e "s/2024-02-26/$cur_date/g" "$cur_date-$1.md"
    open /Users/kasusa/Documents/GitHub/hugo-stacktheme/content/post/
    code /Users/kasusa/Documents/GitHub/hugo-stacktheme/content/post/
    cd "$originalPath"
fi
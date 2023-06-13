if [$1 eq ""];then
    echo "[error] Usage: new.sh <name>"
    exit 1
else
    # Get the current date in yyyy-mm-dd format
    cur_date=$(date +%F)

    # Print the date in yyyy-mm-dd format
    echo "$cur_date-$1"
    hugo new content/zh-cn/posts/$cur_date-$1.md -s /Users/kasusa/Documents/GitHub/cornBlog-bootstraptheme 
    code /Users/kasusa/Documents/GitHub/cornBlog-bootstraptheme/content/zh-cn/posts/
fi
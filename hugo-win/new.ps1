if ($args.Count -eq 0) {
    Write-Host "[error] Usage: new.ps1 <name>"
} else {
    # Get the current date in yyyy-mm-dd format
    $cur_date = Get-Date -Format 'yyyy-MM-dd'

    # Print the date in yyyy-mm-dd format
    Write-Host "$cur_date-$($args[0])"
    & hugo new "content\zh-cn\posts\$cur_date-$($args[0]).md" -s C:\Users\KK\Documents\GitHub\cornBlog-bootstraptheme
    & code C:\Users\KK\Documents\GitHub\cornBlog-bootstraptheme\content\zh-cn\posts\
}
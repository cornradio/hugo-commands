
if ($args.Count -eq 0) {
    Write-Host "[error] Usage: new.ps1 <name>"
} else {
    $originalPath = Get-Location
    # Get the current date in yyyy-mm-dd format
    $cur_date = Get-Date -Format 'yyyy-MM-dd'

    # Print the date in yyyy-mm-dd format
    Write-Host "$cur_date-$($args[0])"
    cd C:\Users\KK\Documents\GitHub\hugo-stacktheme\content\post\
    Copy-Item -Path "abctest.md" -Destination "$cur_date-$($args[0]).md"
    # Replace post name 、 date
    $content = Get-Content -Raw -Path 'abctest.md' -Encoding UTF8
    $newContent = $content -replace 'abctest', $args[0]
    $newContent = $newContent -replace '2024-02-26', $cur_date
    $newContent | Set-Content -Path  "$cur_date-$($args[0]).md" -Encoding UTF8

    code C:\Users\KK\Documents\GitHub\hugo-stacktheme\content\post\
    Set-Location $originalPath
}

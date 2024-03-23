# 保存原始工作目录
$originalPath = Get-Location

cd "C:\Users\KK\Documents\GitHub\cornBlog-bootstraptheme"
hugo -d "C:\Users\KK\Documents\GitHub\cornradio.github.io\hugo"

# 恢复原始工作目录
Set-Location $originalPath
# 保存原始工作目录
$originalPath = Get-Location

cd "C:\Users\kasus\Documents\GitHub\cornBlog-bootstraptheme"
hugo -d "C:\Users\kasus\Documents\GitHub\cornradio.github.io\hugo"

# 恢复原始工作目录
Set-Location $originalPath
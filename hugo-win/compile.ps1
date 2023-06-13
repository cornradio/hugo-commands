# 保存原始工作目录
$originalPath = Get-Location

cd ~/Documents/GitHub/cornBlog-bootstraptheme
hugo -d  ~/Documents/GitHub/cornradio.github.io/hugo
# 恢复原始工作目录
Set-Location $originalPath
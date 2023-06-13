# 保存原始工作目录
$originalPath = Get-Location

echo "- add proxy 7890"
$Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"

echo "- pull source file"
Set-Location C:/Users/kasus/Documents/GitHub/cornBlog-bootstraptheme
git pull

echo "- pull compiled file"
Set-Location C:/Users/kasus/Documents/GitHub/cornradio.github.io
git pull

# 恢复原始工作目录
Set-Location $originalPath
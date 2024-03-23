# 保存原始工作目录
$originalPath = Get-Location

echo "- add proxy 7890"
$Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"

echo "- push source file"
cd C:\Users\KK\Documents\GitHub\hugo-stacktheme
git add .
git commit -m "autocommit"
git push

echo "- push compiled file"
cd C:\Users\KK\Desktop\Sout
git add .
git commit -m "autocommit"
git push

# 恢复原始工作目录
Set-Location $originalPath
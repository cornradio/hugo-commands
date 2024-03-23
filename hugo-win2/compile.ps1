# 保存原始工作目录
$originalPath = Get-Location

cd "C:\Users\KK\Documents\GitHub\hugo-stacktheme"
hugo -d "C:\Users\KK\Desktop\Sout"

# 恢复原始工作目录
Set-Location $originalPath
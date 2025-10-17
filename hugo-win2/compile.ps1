# 保存原始工作目录
$originalPath = Get-Location

cd "C:\Users\rober\Documents\GitHub\hugo-stacktheme"
hugo -d "C:\Users\rober\Desktop\Sout"

# 恢复原始工作目录
Set-Location $originalPath
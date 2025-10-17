# https://github.com/bmatzelle/gow/releases/tag/v0.8.0

sed 's/KK/rober/g' -i *.ps1
sed 's|C:\\Users\\KK\\Documents\\GitHub\\cornradio.github.io\\hugo|C:\\Users\\rober\\Desktop\\Sout|g' *.ps1 -i
sed 's|C:\\Users\\KK\\Documents\\GitHub\\cornBlog-bootstraptheme|C:\\Users\\rober\\Documents\\GitHub\\hugo-stacktheme|g' *.ps1 -i
sed 's|C:/Users/KK/Documents/GitHub/cornBlog-bootstraptheme|C:\\Users\\rober\\Documents\\GitHub\\hugo-stacktheme|g' *.ps1 -i
sed 's|C:/Users/KK/Documents/GitHub/cornradio.github.io|C:\\Users\\rober\\Desktop\\Sout|g' *.ps1 -i



# 首次执行需要在管理员pwsh中执行下面命令。允许ps1脚本
Set-ExecutionPolicy RemoteSigned

# 可以增加快捷方式便于使用
code $PROFILE

function hg { Set-Location -Path 'C:\Users\rober\Documents\GitHub\hugo-commands\hugo-win2'}

使用需要安装
git
Go  https://go.dev/dl/
hugo-extended https://github.com/gohugoio/hugo/releases
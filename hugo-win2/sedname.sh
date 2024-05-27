# https://github.com/bmatzelle/gow/releases/tag/v0.8.0

sed 's/KK/Admin/g' -i *.ps1
sed 's|C:\\Users\\KK\\Documents\\GitHub\\cornradio.github.io\\hugo|C:\\Users\\KK\\Desktop\\Sout|g' *.ps1 -i
sed 's|C:\\Users\\KK\\Documents\\GitHub\\cornBlog-bootstraptheme|C:\\Users\\KK\\Documents\\GitHub\\hugo-stacktheme|g' *.ps1 -i
sed 's|C:/Users/KK/Documents/GitHub/cornBlog-bootstraptheme|C:\\Users\\KK\\Documents\\GitHub\\hugo-stacktheme|g' *.ps1 -i
sed 's|C:/Users/KK/Documents/GitHub/cornradio.github.io|C:\\Users\\KK\\Desktop\\Sout|g' *.ps1 -i
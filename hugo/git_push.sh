echo - add proxy 7890
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

echo - push source file
cd /Users/kasusa/Documents/GitHub/hugo-stacktheme
git add .
git commit -m "autocommit"
git push

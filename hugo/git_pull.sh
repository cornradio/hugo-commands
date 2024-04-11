echo - add proxy 7890
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

echo - pull source file
cd /Users/kasusa/Documents/GitHub/hugo-stacktheme
git pull

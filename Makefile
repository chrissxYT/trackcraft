all:
	./cat_urls.sh
	echo "source whitelist.vim\nwq\n" | ex blocklist

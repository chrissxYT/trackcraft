all:
	./cat_urls.sh
	echo "source format.vim\nwq\n" | ex blocklist

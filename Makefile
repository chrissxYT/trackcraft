all:
	./cat_urls.sh
	echo "source format.vim\n" | ex blocklist

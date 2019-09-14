all:
	./cat_urls.bash
	ex -n -u NONE -S format.vim blocklist > /dev/null

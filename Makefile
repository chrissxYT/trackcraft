all:
	./cat_urls.sh
	ex -n -u NONE -S format.vim blocklist > /dev/null

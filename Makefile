submodule:
	git submodule update --init --recursive

build:
	docker run -v `pwd`:/srv/jekyll -v `pwd`/_site:/srv/jekyll/_site jekyll/builder:latest /bin/bash -c "chmod 777 /srv/jekyll && jekyll build --future"

server:
	python3.7 -m http.server --directory _site
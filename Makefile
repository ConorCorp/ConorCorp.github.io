# `make new url=my-new-post`
new:
	hugo new content --kind post-bundle posts/$(url)

# `make retro`
retro:
	hugo new content --kind retro retros/retro-year-month

dev:
	hugo server -D

build:
	hugo

commit:
	make build
	git add .
	git commit -m "$(m)"
	git push origin main

update:
	git submodule update --remote --merge

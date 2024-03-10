new:
	hugo new --kind post-bundle posts/$(url)

run:
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

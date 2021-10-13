build:
	docker build . -t ghcr.io/notandrewdev/drewbuntu:latest

run:
	docker run --rm -it --entrypoint /bin/bash ghcr.io/alii/alibuntu:latest

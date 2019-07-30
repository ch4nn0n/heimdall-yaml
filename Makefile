SHELL := /bin/bash

.PHONY: build
build:
	docker build . -t ch4nn0n/heimdall-yaml

.PHONY: run
run: build
	docker run --rm \
	-v `pwd`/test-assets:/data \
    -v `pwd`/temp:/config \
    ch4nn0n/heimdall-yaml \
    ./start.sh

	docker run -it --rm \
	-v `pwd`/temp:/config \
	-p 127.0.0.1:8080:80 \
	linuxserver/heimdall \
	bash

#.PHONY: fresh
#run:
#	build
#	rm -r temp
#	run



VERSION=1.13.5

check-env:
ifndef PROJECT
	$(error PROJECT is not defined)
endif
ifndef VERSION
	$(error VERSION is not defined)
endif

build: check-env
	docker build --pull -t godockertest:latest ./godockertest
	docker tag godockertest:latest gcr.io/$(PROJECT)/godockertest:latest
	docker tag godockertest:latest gcr.io/$(PROJECT)/godockertest:$(VERSION)

push:
	docker push gcr.io/$(PROJECT)/godockertest:latest
	docker push gcr.io/$(PROJECT)/godockertest:$(VERSION)

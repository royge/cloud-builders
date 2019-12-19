VERSION=1.13.5

check-env:
ifndef PROJECT_ID
	$(error PROJECT_ID is not defined)
endif
ifndef VERSION
	$(error VERSION is not defined)
endif

build: check-env
	docker build --pull -t godockertest:latest ./godockertest
	docker tag godockertest:latest gcr.io/$(PROJECT_ID)/godockertest:latest
	docker tag godockertest:latest gcr.io/$(PROJECT_ID)/godockertest:$(VERSION)

push:
	docker push gcr.io/$(PROJECT_ID)/godockertest:latest
	docker push gcr.io/$(PROJECT_ID)/godockertest:$(VERSION)

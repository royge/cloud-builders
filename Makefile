VERSION=1.13.5

check-env:
ifndef PROJECT_ID
	$(error PROJECT_ID is not defined)
endif
ifndef VERSION
	$(error VERSION is not defined)
endif

build: check-env
	docker build --pull -t dockergo:latest ./dockergo
	docker tag dockergo:latest gcr.io/$(PROJECT_ID)/dockergo:latest
	docker tag dockergo:latest gcr.io/$(PROJECT_ID)/dockergo:$(VERSION)

push:
	docker push gcr.io/$(PROJECT_ID)/dockergo:latest
	docker push gcr.io/$(PROJECT_ID)/dockergo:$(VERSION)

SHELL := /bin/bash

test:
	@set -a; \
	source .env; \
	set +a; \
	hatch run cov

bump:
	@set -a; \
	source .env; \
	set +a; \
	hatch run cov; \
	hatch version patch; \
	hatch build; \
	hatch publish; \
	hatch clean; \
	git add .; \
	git commit -m "Bump version"

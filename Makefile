GITBOOK = node_modules/.bin/gitbook
.PHONY: all clean serve

all: node_modules/gitbook
	$(GITBOOK) build

clean:
	rm -rf _book

serve: node_modules/gitbook
	$(GITBOOK) serve

node_modules/gitbook:
	npm install gitbook gitbook-cli

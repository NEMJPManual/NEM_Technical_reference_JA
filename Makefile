.PHONY: all clean serve

all:
	gitbook build

clean:
	rm -rf _book

serve:
	gitbook serve --watch


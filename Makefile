OUTFILE=coffee.1

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

manpage: clean ## Compile manpage from markdown to output file $(OUTFILE).
	docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/core -s \
	-s manpage.md -o $(OUTFILE)

install: manpage ## Install the compiled manpage to host system.
	sudo cp -f $(OUTFILE) /usr/local/share/man/man1/
	sudo mandb

preview: manpage ## Preview the manpage.
	cat $(OUTFILE) | /usr/bin/man -l -

clean: ## Remove any compiler artifacts.
	rm -f *.1 *.log


help:
	@grep -h -E '^[a-zA-Z0-9_-]+:.*?# .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: # Install dependencies and symlink config
	./install -is

install: # Install dependencies
	./install -i

link: # Symlink config
	./install -s

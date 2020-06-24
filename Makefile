get-nix:
	mkdir -p systils/nix
	# nix port version 2.3.1
	curl -L https://github.com/0mp/freebsd-ports-nix/archive/7897103b6233b8e03ab6d2eb553cfca9c65ac455.tar.gz | tar -zxv -C sysutils/nix --strip-components 1 --exclude=".*"

PHONY: .get-nix

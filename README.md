# Ports

## Config

/etc/make.conf

```
DEVELOPER=yes
OVERLAYS=/usr/robs-ports
```

## Build a port

```
make config
make makesum
make makeplist > pkg-plist # Remove to line after output
make package
make stage
make install
```
> ALLOW_UNSUPPORTED_SYSTEM=yes


## plist

If youve autogenerated the `pkg-plist` then you need to remove the first line from the top
of its output:

```
# cat pkg-plist
/you/have/to/check/what/makeplist/gives/you
etc/rc.d/vm
lib/vm-bhyve/vm-base
lib/vm-bhyve/vm-cmd
lib/vm-bhyve/vm-config
lib/vm-bhyve/vm-core
lib/vm-bhyve/vm-datastore
lib/vm-bhyve/vm-guest
```

Or you'll end up with the following error:

```
 # make install
===>  Installing for vm-bhyve-1.5.0.p1
===>  Checking if vm-bhyve is already installed
===>   Registering installation for vm-bhyve-1.5.0.p1
pkg-static: Unable to access file /usr/robs-ports/sysutils/vm-bhyve/work/stage/you/have/to/check/what/makeplist/gives/you:No such file or directory
*** Error code 74

Stop.
make[1]: stopped in /usr/robs-ports/sysutils/vm-bhyve
*** Error code 1

Stop.
```

This is a mechanism that the portstree adds to ensure people aren't blindly adding the output of `make plist`

## Sources

* [Porters Handbook](https://www.freebsd.org/doc/en/books/porters-handbook/book.html)
    * [Quick porting](https://www.freebsd.org/doc/en/books/porters-handbook/book.html#quick-porting)
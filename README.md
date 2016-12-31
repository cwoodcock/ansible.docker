# ansible.docker

This is a fork of https://github.com/angstwad/docker.ubuntu for my own purposes.  Backwards compatibility is not a priority for me, YMMV.

Installs Docker on:

* Ubuntu 16.04

## Notable changes from upstream
* Targets Ubuntu 16.04, backwards compatability is not guaranteed
* Pins versions of pips (working defaults philosophy)
* [TODO] Does not mess with the kernel
* [TODO] Allows different storage drivers to be used

Requirements
------------

Requires python-pycurl for apt modules.

Role Variables
--------------

See defaults/main.yml for the defaults.

Dependencies
------------

None.

Testing
-------

Setup a Ruby environment (rvm ftw) and install bundler, then do a `bundle install`.

Then you can run `kitchen test` to run the test suites.

Note: requires `ansible-playbook` to be in the path.

To speed up local dev (or behind any slow connection) an apt proxy can be
configured.  It has been tested against apt-cacher-ng.  If the host has the
environment variable APT_CACHE_HOST set to the ip/fqdn of the proxy then this
will be passed to the test VM and the proxy will be used.  By default it will
use port 3142, but that can be overriden with a host env var APT_CACHE_PORT.

License
-------

Apache v2.0

Ubuntu 21.04
============

Provides an approximate Ubuntu Server installation using `ubuntu:21.04` as the base image.

This image is intended to be used as a containerized development environment, not to create application-specific containers. For the latter purpose, it is strongly recommended that the `ubuntu:21.04` image be used directly.

Usage
-----

```dockerfile
FROM kherge/ubuntu-server:21.04
```

Caveats
-------

- `systemd` is not available.
- Local time is Etc/UTC.
- Locale is `en_US.UTF-8`.

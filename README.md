
I couldn't find an existing C library for SPDY that was suitable for my project,
so here's my take on one.

It supports both draft 2 and draft 3.  If the remote endpoint sends the first
control frame, it will use whichever version they use.  If sending the first
control frame itself, the version passed to `spdy_ctx_new` will be used (draft
2 by default).

ANSI C, BSD licensed, requires zlib.

[![Build Status](https://secure.travis-ci.org/udp/spdy.png)](http://travis-ci.org/udp/spdy)

Known issues
============

* Draft 3 CREDENTIAL frame not implemented
* Flow control not implemented





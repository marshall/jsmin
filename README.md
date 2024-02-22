jsmin
-----
Crockford's beautifully minimal [jsmin][] as a container

doubles as an effective jsonc->json converter

## usage

    $ docker run --rm -i marshallc/jsmin < my-jsonc.json

## container dev (requires [just])

    $ just build
    $ just run my-jsonc.json
    $ just push

[jsmin]: https://github.com/douglascrockford/JSMin
[just]: https://github.com/casey/just

package stdgo._internal.hash.maphash;
function string(_seed:stdgo._internal.hash.maphash.Maphash_seed.Seed, _s:stdgo.GoString):stdgo.GoUInt64 {
        var _state = (_seed._s : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L64"
        if (_state == ((0i64 : stdgo.GoUInt64))) {
            //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L65"
            throw stdgo.Go.toInterface(("maphash: use of uninitialized Seed" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L67"
        while (((_s.length) > (128 : stdgo.GoInt) : Bool)) {
            _state = stdgo._internal.hash.maphash.Maphash__rthashstring._rthashString((_s.__slice__(0, (128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _state);
            _s = (_s.__slice__((128 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/maphash/maphash.go#L71"
        return stdgo._internal.hash.maphash.Maphash__rthashstring._rthashString(_s?.__copy__(), _state);
    }
